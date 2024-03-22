<ExpandedRow id="activeRequestTableExpandedRow">
  <Container
    id="container"
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    margin="0"
    padding="0"
    showBody={true}
    showBorder={false}
  >
    <View id="c07ee" viewKey="View 1">
      <Image
        id="slackIcon"
        fit="contain"
        heightType="fixed"
        hidden="{{currentSourceRow.context === null}}"
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
        id="gongIcon"
        fit="contain"
        heightType="fixed"
        hidden="{{currentSourceRow.gong_link === null}}"
        horizontalAlign="right"
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
      <Image
        id="linearIcon"
        fit="contain"
        heightType="fixed"
        hidden="{{currentSourceRow.linear === null}}"
        horizontalAlign="center"
        src="https://trackingtime.co/wp-content/themes/trackingtime-ACF/img/integrations/linear-time-tracking.png"
      >
        <Event
          enabled="{{activeRequestTable.selectedRow.linear}}"
          event="click"
          method="openUrl"
          params={{ ordered: [{ url: "{{currentSourceRow.linear}}" }] }}
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
        ordered: [{ url: "{{activeRequestTable.selectedRow.gong_link}}" }],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Container>
</ExpandedRow>
