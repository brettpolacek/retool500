<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Table
      id="table1"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getInventory.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      limitOffsetRowCount="{{getTableSize.data.count}}"
      overflowType="pagination"
      primaryKeyColumnId="db673"
      serverPaginated={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      templatePageSize="10"
      toolbarPosition="bottom"
    >
      <Column
        id="db673"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c2763"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="sku"
        label="SKU"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="05d98"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="1f8d9"
        alignment="right"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="quantity"
        label="Quantity"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3343c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="replenish"
        label="Replenish"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cdf3d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="location"
        label="Location"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="509f7"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            "{{(currentSourceRow.quantity-currentSourceRow.replenish)>0? '#90EE90':'#ffcccb'}}",
        }}
        groupAggregationMode="none"
        label="Delta"
        placeholder="Select option"
        position="center"
        referenceId="delta"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{currentSourceRow.quantity-currentSourceRow.replenish}}"
      />
      <Column
        id="b622c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        label="Status"
        placeholder="Select option"
        position="center"
        referenceId="status"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{(currentSourceRow.quantity-currentSourceRow.replenish)>0?'In Stock':'Below Levels'}}"
      />
      <Column
        id="69ac6"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        label="Place Order"
        placeholder="Enter value"
        position="center"
        referenceId="placeOrder"
        size={100}
        summaryAggregationMode="none"
        valueOverride={
          '{{(currentSourceRow.quantity-currentSourceRow.replenish)<0? "Reorder":""}}'
        }
      >
        <Event
          event="clickCell"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="initiateReorderWorkflow"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Action
        id="ae865"
        icon="bold/interface-delete-bin-2"
        label="Delete Inventory"
      >
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="deleteInventory"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateInventory"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Container
      id="steppedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Steps
          id="steps1"
          horizontalAlign="center"
          itemMode="static"
          marginType="normal"
          navigateContainer={true}
          showStepNumbers={true}
          targetContainerId="steppedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="abc03" value="Step 1" />
          <Option id="461f0" value="Step 2" />
          <Option id="3eaa0" value="Step 3" />
        </Steps>
      </Header>
      <View id="97e28" viewKey="Step 1" />
      <View id="f57d9" viewKey="Step 2" />
      <View id="a4277" viewKey="Step 3" />
      <Footer>
        <Button
          id="prevButton1"
          disabled="{{ steppedContainer1.currentViewIndex === 0 }}"
          iconBefore="bold/interface-arrows-left-alternate"
          marginType="normal"
          styleVariant="outline"
          text="Previous"
        >
          <Event
            event="click"
            method="showPreviousVisibleView"
            params={{ ordered: [{ wrap: false }] }}
            pluginId="steppedContainer1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="nextButton1"
          disabled="{{ steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length }}"
          iconAfter="bold/interface-arrows-right-alternate"
          marginType="normal"
          text="Next"
        >
          <Event
            event="click"
            method="showNextVisibleView"
            params={{ ordered: [{ wrap: false }] }}
            pluginId="steppedContainer1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Footer>
    </Container>
    <PlotlyChart
      id="chart1"
      dataseries={{
        ordered: [
          {
            2: {
              ordered: [
                { label: "replenish" },
                { datasource: "{{getInventory.data['replenish']}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#55A1E3" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            1: {
              ordered: [
                { label: "quantity" },
                { datasource: "{{getInventory.data['quantity']}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#247BC7" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{getInventory.data}}"
      isDataTemplateDirty={true}
      legendAlignment="left"
      skipDatasourceUpdate={true}
      title="Acme Part Inventory"
      xAxis="{{getInventory.data.sku}}"
      xAxisDropdown="sku"
      xAxisTitle="SKU"
    />
    <Multiselect
      id="multiselect1"
      emptyMessage="No options"
      itemMode="static"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      wrapTags={true}
    >
      <Option id="d05d3" value="Option 1" />
      <Option id="d95bd" value="Option 2" />
      <Option id="69058" value="Option 3" />
    </Multiselect>
    <KeyValue
      id="keyValue1"
      data="{
  id: 0,
  firstName: 'Chic',
  lastName: 'Footitt',
  email: 'chic.footitt@yahoo.com',
  website: 'https://chic.footitt.com',
  text: 'Nulla sit amet nibh at augue facilisis viverra quis id dui. Nullam mattis ultricies metus. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris',
  role: 'Viewer',
  teams: ['Workplace', 'Infrastructure'],
  enabled: true,
  createdAt: '2023-01-16T23:40:20.385Z',
}"
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="firstName"
        format="string"
        formatOptions={{}}
        hidden={false}
        label="⌛"
      />
    </KeyValue>
    <MultiselectListbox
      id="multiselectListbox1"
      emptyMessage="No options"
      itemMode="static"
      labelPosition="top"
      marginType="normal"
      showSelectionIndicator={true}
      value="{{ [self.values[0]] }}"
    >
      <Option id="b0748" value="Option 1" />
      <Option id="fea72" value="Option 2" />
      <Option id="37fc3" value="Option 3" />
    </MultiselectListbox>
    <Container
      id="container1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="7fa65" viewKey="View 1">
        <ListViewBeta
          id="listView1"
          computeAllInstanceValues={true}
          data={
            '["Fluffy", "Whiskers", "Fido", "Mittens", "Rex", "Snowball", "Spot", "Lucky", "Princess", "Buddy", "Milo", "Cleo", "Lola", "Simba", "Rocky", "Ginger", "Spike", "Max", "Cupcake", "Oreo"]'
          }
          itemWidth="200px"
          margin="0"
          marginType="none"
          numColumns={3}
          padding="0"
        >
          <Container
            id="container2"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            marginType="normal"
            padding="12px"
            showBody={true}
            showHeader={true}
          >
            <Header>
              <Text
                id="containerTitle2"
                marginType="normal"
                value="#### {{ item }}"
                verticalAlign="center"
              />
            </Header>
            <View id="f7fab" viewKey="View 1" />
          </Container>
        </ListViewBeta>
      </View>
    </Container>
  </Frame>
</App>
