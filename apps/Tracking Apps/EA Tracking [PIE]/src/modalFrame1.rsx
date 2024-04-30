<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="updateModal"
      value="### Update Request Data"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton3"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="linksUpdate"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData=""
      margin="0"
      padding="0"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showBorder={false}
      showFooter={true}
    >
      <Header>
        <Text id="formTitle3" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <TextInput
          id="textInput9"
          formDataKey="context"
          label="Context"
          labelPosition="top"
          patternType="url"
          placeholder="[your-slack-link-here]"
          textBefore="https://"
          value="{{activeRequestTable.selectedRow.context}}"
        />
        <TextInput
          id="textInput10"
          formDataKey="linear"
          label="Linear"
          labelPosition="top"
          patternType="url"
          placeholder="[your-linear-link-here]"
          textBefore="https://"
          value="{{activeRequestTable.selectedRow.linear}}"
        />
        <TextInput
          id="textInput11"
          formDataKey="gong_link"
          label="Gong link"
          labelPosition="top"
          patternType="url"
          placeholder="[your-gong-link-here]"
          textBefore="https://"
          value="{{activeRequestTable.selectedRow.gong_link}}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton3"
          submit={true}
          submitTargetId="linksUpdate"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateLinks"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
