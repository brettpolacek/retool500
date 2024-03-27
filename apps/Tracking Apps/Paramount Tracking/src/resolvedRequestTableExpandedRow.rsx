<ExpandedRow id="resolvedRequestTableExpandedRow">
  <Container
    id="container2"
    disabledByIndex={[]}
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    hiddenByIndex={[]}
    iconByIndex={[]}
    iconPositionByIndex={[]}
    labels={[]}
    margin="0"
    padding="0"
    showBody={true}
    tooltipByIndex={[]}
    viewKeys={[]}
    views={[]}
  >
    <View id="c07ee" viewKey="View 1">
      <Image
        id="slackIcon2"
        fit="contain"
        heightType="fixed"
        hidden="{{currentSourceRow.context === null}}"
        retoolFileObject={{ ordered: [] }}
        src="https://cdn.icon-icons.com/icons2/2699/PNG/512/slack_tile_logo_icon_168820.png"
      >
        <Event
          event="click"
          method="openUrl"
          params={{ ordered: [{ url: "{{currentSourceRow.context}}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Image>
      <Image
        id="linearIcon2"
        fit="contain"
        heightType="fixed"
        hidden="{{currentSourceRow.linear === null}}"
        horizontalAlign="center"
        retoolFileObject={{ ordered: [] }}
        src="https://trackingtime.co/wp-content/themes/trackingtime-ACF/img/integrations/linear-time-tracking.png"
      >
        <Event
          enabled="{{resolvedRequestTable.selectedRow.linear}}"
          event="click"
          method="openUrl"
          params={{ ordered: [{ url: "{{currentSourceRow.linear}}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Image>
      <Image
        id="gongIcon2"
        fit="contain"
        heightType="fixed"
        hidden="{{currentSourceRow.gong_link === null}}"
        horizontalAlign="right"
        retoolFileObject={{ ordered: [] }}
        src="https://www.gong.io/wp-content/uploads/2023/02/gong-logo.png"
      >
        <Event
          event="click"
          method="openUrl"
          params={{ ordered: [{ url: "{{currentSourceRow.gong_link}}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Image>
    </View>
    <Event
      event="click"
      method="openUrl"
      params={{
        ordered: [{ url: "{{resolvedRequestTable.selectedRow.gong_link}}" }],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Container>
</ExpandedRow>
