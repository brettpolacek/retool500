<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  margin="0"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [] }}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      style={{ ordered: [] }}
      styleVariant="pill"
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="50b68" value="Tab 1" />
      <Option id="868f9" value="Tab 2" />
      <Option id="73f39" value="Tab 3" />
    </Tabs>
  </Header>
  <View
    id="3992c"
    icon="line/programming-bug"
    iconPosition="left"
    viewKey="Requests/Bugs"
  >
    <TextInput
      id="activeRequestSearch"
      label=""
      labelPosition="top"
      placeholder="Search"
      showClear={true}
    />
    <Table
      id="activeRequestTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getActiveRequests.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableExpandableRows={true}
      enableSaveActions={true}
      primaryKeyColumnId="ca9fa"
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ headerBackground: "primary" }}
      toolbarPosition="bottom"
    >
      <Include src="./activeRequestTableExpandedRow.rsx" />
      <Column
        id="ca9fa"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="beea9"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={180}
        summaryAggregationMode="none"
      />
      <Column
        id="bddfa"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="priority"
        label="Priority"
        optionList={{
          mode: "manual",
          mappedData: "{{ getActiveRequests.data }}",
          valueByIndex: "{{ item.id }}",
          labelByIndex: "{{ item.priority }}",
          manualData: [
            {
              ordered: [{ value: "Highest" }, { color: "{{ theme.danger }}" }],
            },
            { ordered: [{ value: "High" }, { color: "{{ theme.warning }}" }] },
            {
              ordered: [
                { value: "Medium" },
                { color: "{{ theme.highlight }}" },
              ],
            },
            { ordered: [{ value: "Low" }, { color: "{{ theme.info }}" }] },
            {
              ordered: [
                { value: "Resolved" },
                { color: "rgba(176, 173, 173, 0.98)" },
              ],
            },
          ],
        }}
        position="center"
        size={100}
        sortMode="optionList"
        summaryAggregationMode="none"
      />
      <Column
        id="b0322"
        alignment="left"
        editable={true}
        format="string"
        groupAggregationMode="none"
        key="weekly_update"
        label="Weekly update"
        placeholder="Enter value"
        position="center"
        size={507}
        summaryAggregationMode="none"
      />
      <Column
        id="7bdc5"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        optionList={{
          manualData: [
            {
              ordered: [
                { value: "In Progress" },
                { color: "rgba(235, 120, 120, 1)" },
              ],
            },
            { ordered: [{ value: "Backlog" }, { color: "{{ theme.info }}" }] },
            {
              ordered: [{ value: "Blocked" }, { color: "{{ theme.primary }}" }],
            },
            {
              ordered: [
                { value: "Resolved" },
                { color: "{{ theme.success }}" },
              ],
            },
            {
              ordered: [
                { value: "Triage" },
                { color: "{{ theme.highlight }}" },
              ],
            },
          ],
        }}
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="29353"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="next_step"
        label="Next step"
        placeholder="Enter value"
        position="center"
        size={621}
        summaryAggregationMode="none"
      />
      <Column
        id="fd858"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="context"
        label="Context"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="28ad4"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="linear"
        label="Linear"
        placeholder="Enter value"
        position="center"
        size={71}
        summaryAggregationMode="none"
      />
      <Column
        id="23a68"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="gong_link"
        label="Gong link"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="462b9"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="created_at"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ee646"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="account_name"
        label="Account name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
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
          pluginId="activeRequestTable"
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
          pluginId="activeRequestTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateActiveRequests"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Button
      id="newRequestButton"
      style={{ ordered: [] }}
      styleVariant="solid"
      text="New Request/Bug"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="newRequestModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="4e755"
    icon="line/interface-setting-wrench-hand"
    iconPosition="left"
    viewKey="Projects"
  >
    <TextInput
      id="activeProjectSearch"
      label=""
      labelPosition="top"
      placeholder="Search"
      showClear={true}
    />
    <Table
      id="activeProjectsTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getActiveProjects.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="322d9"
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ headerBackground: "primary" }}
      toolbarPosition="bottom"
    >
      <Column
        id="322d9"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="4c5c0"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={194}
        summaryAggregationMode="none"
      />
      <Column
        id="e3b5d"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="priority"
        label="Priority"
        optionList={{
          manualData: [
            { ordered: [{ value: "High" }, { color: "{{ theme.danger }}" }] },
            {
              ordered: [
                { value: "Medium" },
                { color: "{{ theme.highlight }}" },
              ],
            },
            { ordered: [{ value: "Low" }, { color: "{{ theme.info }}" }] },
            {
              ordered: [
                { value: "Backlog" },
                { color: "rgba(179, 174, 174, 0.98)" },
              ],
            },
          ],
        }}
        placeholder="Select option"
        position="center"
        size={100}
        sortMode="optionList"
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="99fdb"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        optionList={{
          manualData: [
            {
              ordered: [
                { value: "Completed" },
                { color: "{{ theme.success }}" },
              ],
            },
            {
              ordered: [
                { value: "In Progress" },
                { color: "rgba(239, 99, 99, 1)" },
              ],
            },
            { ordered: [{ value: "Backlog" }, { color: "{{ theme.info }}" }] },
            {
              ordered: [{ value: "Blocked" }, { color: "{{ theme.primary }}" }],
            },
            {
              ordered: [
                { value: "In Review" },
                { color: "{{ theme.highlight }}" },
              ],
            },
          ],
        }}
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a5892"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="weekly_update"
        label="Weekly update"
        placeholder="Enter value"
        position="center"
        size={577}
        summaryAggregationMode="none"
      />
      <Column
        id="24c33"
        alignment="left"
        cellTooltipMode="overflow"
        editable="true"
        format="multilineString"
        groupAggregationMode="none"
        key="next_steps"
        label="Next steps"
        placeholder="Enter value"
        position="center"
        size={655}
        summaryAggregationMode="none"
      />
      <Column
        id="b5f20"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="expected_delivery"
        label="Expected delivery"
        optionList={{
          manualData: [
            {
              ordered: [
                { value: "Complete" },
                { color: "{{ theme.success }}" },
              ],
            },
            { ordered: [{ value: "Backlog" }, { color: "{{ theme.info }}" }] },
            {
              ordered: [{ value: "TBD" }, { color: "rgba(196, 191, 191, 1)" }],
            },
            {
              ordered: [{ value: "Q 2" }, { color: "rgba(155, 222, 120, 1)" }],
            },
            { ordered: [{ value: "Q 3" }, { color: "rgba(88, 216, 222, 1)" }] },
            {
              ordered: [{ value: "Q 4" }, { color: "rgba(187, 127, 213, 1)" }],
            },
            { ordered: [{ value: "Q 1" }, { color: "{{ theme.highlight }}" }] },
          ],
        }}
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f79e8"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="created"
        label="Created"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b5f62"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="account_name"
        label="Account name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
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
          pluginId="activeProjectsTable"
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
          pluginId="activeProjectsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateActiveProjects"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Button id="newProjectButton" styleVariant="solid" text="New Project">
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="newProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="61ab1"
    icon="line/interface-setting-slider-horizontal"
    iconPosition="left"
    viewKey="Special"
  >
    <TextArea
      id="specialTextArea"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines="30"
      placeholder="Open format entry"
      value="{{getSpecialInfo.data.text[0]}}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSpecialInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <Button id="specialButton" styleVariant="solid" text="Save">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateSpecialText"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
