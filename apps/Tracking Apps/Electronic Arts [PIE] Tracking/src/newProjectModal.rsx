<ModalFrame
  id="newProjectModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="0"
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text id="modalTitle2" value="### New Project" verticalAlign="center" />
    <Button
      id="modalCloseButton2"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="newProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="newProjectForm"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData=""
      margin="0"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
    >
      <Header>
        <Text id="formTitle2" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <TextInput
          id="textInput7"
          formDataKey="name"
          label="Name"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <Select
          id="select3"
          emptyMessage="No options"
          formDataKey="priority"
          itemMode="static"
          label="Priority"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values={null}
        >
          <Option
            id="82f9d"
            color="{{theme.danger}}"
            disabled={false}
            hidden={false}
            value="High"
          />
          <Option
            id="0d1be"
            color="{{theme.highlight}}"
            disabled={false}
            hidden={false}
            value="Medium"
          />
          <Option
            id="b1f1a"
            color="{{theme.info}}"
            disabled={false}
            hidden={false}
            value="Low"
          />
          <Option
            id="d927b"
            color="#B3AEAE"
            disabled={false}
            hidden={false}
            value="Backlog"
          />
        </Select>
        <Select
          id="select4"
          emptyMessage="No options"
          formDataKey="status"
          itemMode="static"
          label="Status"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values={null}
        >
          <Option
            id="173b2"
            color="#EF6363"
            disabled={false}
            hidden={false}
            value="In Progress"
          />
          <Option
            id="95327"
            color="{{theme.info}}"
            disabled={false}
            hidden={false}
            value="Backlog"
          />
          <Option
            id="d2438"
            color="{{theme.highlight}}"
            disabled={false}
            hidden={false}
            value="In Review"
          />
          <Option
            id="b7cdd"
            color="{{theme.primary}}"
            disabled={false}
            hidden={false}
            value="Blocked"
          />
          <Option
            id="b1dd2"
            color="{{theme.success}}"
            disabled={false}
            hidden={false}
            value="Complete"
          />
        </Select>
        <TextInput
          id="textInput8"
          formDataKey="weekly_update"
          label="Weekly update"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="textArea1"
          autoResize={true}
          formDataKey="next_steps"
          label="Next steps"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <Select
          id="select5"
          emptyMessage="No options"
          formDataKey="expected_delivery"
          itemMode="static"
          label="Expected delivery"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values={null}
        >
          <Option
            id="17ab1"
            color="{{theme.highlight}}"
            disabled={false}
            hidden={false}
            value="Q 1"
          />
          <Option
            id="70ad8"
            color="#9BDE78"
            disabled={false}
            hidden={false}
            value="Q 2"
          />
          <Option
            id="bb62b"
            color="#58D8DE"
            disabled={false}
            hidden={false}
            value="Q 3"
          />
          <Option
            id="14abf"
            color="#BB7FD5"
            disabled={false}
            hidden={false}
            value="Q 4"
          />
          <Option
            id="ec140"
            color="{{theme.info}}"
            disabled={false}
            hidden={false}
            value="Backlog"
          />
          <Option
            id="1f591"
            color="{{theme.success}}"
            disabled={false}
            hidden={false}
            value="Complete"
          />
          <Option
            id="799a2"
            color="#C4BFBF"
            disabled={false}
            hidden={false}
            value="TBD"
          />
        </Select>
      </Body>
      <Footer>
        <Button
          id="formButton2"
          styleVariant="solid"
          submit={true}
          submitTargetId="newProjectForm"
          text="Submit"
        />
      </Footer>
    </Form>
  </Body>
</ModalFrame>
