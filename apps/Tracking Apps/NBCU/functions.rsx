<GlobalFunctions>
  <SqlQueryUnified
    id="getActiveRequests"
    isMultiplayerEdited={false}
    query={include("./lib/getActiveRequests.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getActiveProjects"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getActiveProjects.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getCompleteProjects"
    isMultiplayerEdited={false}
    query={include("./lib/getCompleteProjects.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getResolvedRequests"
    isMultiplayerEdited={false}
    query={include("./lib/getResolvedRequests.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="newRequestRecord"
    actionType="INSERT"
    changeset={
      '[{"key":"account_name","value":"{{ customerVariable.value }}"},{"key":"name","value":"{{textInput1.value}}"},{"key":"priority","value":"{{select1.value}}"},{"key":"weekly_update","value":"{{textInput2.value}}"},{"key":"status","value":"{{select2.value}}"},{"key":"next_step","value":"{{textInput3.value}}"},{"key":"context","value":"{{textInput4.value == \'\' ? null: textInput4.value}}"},{"key":"linear","value":"{{textInput5.value == \'\' ? null: textInput5.value}}"},{"key":"gong_link","value":"{{textInput6.value == \'\' ? null : textInput6.value}}"}]'
    }
    changesetObject="{{newRequestForm.data}}"
    editorMode="gui"
    isMultiplayerEdited={false}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    runWhenModelUpdates={false}
    tableName="request_tracker"
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="resolvedRequestTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="activeRequestTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="newProjectRecord"
    actionType="INSERT"
    changeset={
      '[{"key":"account_name","value":"{{ customerVariable.value }}"},{"key":"name","value":"{{textInput7.value}}"},{"key":"priority","value":"{{select3.value}}"},{"key":"status","value":"{{select4.value}}"},{"key":"weekly_update","value":"{{textInput8.value}}"},{"key":"next_steps","value":"{{textArea1.value}}"},{"key":"expected_delivery","value":"{{select5.value}}"}]'
    }
    changesetObject="{{newRequestForm.data}}"
    editorMode="gui"
    isMultiplayerEdited={false}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    runWhenModelUpdates={false}
    tableName="project_tracker"
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="activeProjectsTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="completeProjectsTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="hide"
      params={{ ordered: [] }}
      pluginId="newProjectModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <State
    id="customerVariable"
    value="{{customerName.value.replace(/## /g, '')}}"
  />
  <SqlQueryUnified
    id="updateActiveRequests"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="id"
    editorMode="gui"
    notificationDuration={4.5}
    records="{{activeRequestTable.changesetArray}}"
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="request_tracker"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="clearChangeset"
      params={{ ordered: [] }}
      pluginId="activeRequestTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="activeRequestTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateActiveProjects"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="id"
    editorMode="gui"
    notificationDuration={4.5}
    records="{{activeProjectsTable.changesetArray}}"
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="project_tracker"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="activeProjectsTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateResolvedRequests"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="id"
    editorMode="gui"
    notificationDuration={4.5}
    records="{{resolvedRequestTable.changesetArray}}"
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="request_tracker"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="clearChangeset"
      params={{ ordered: [] }}
      pluginId="resolvedRequestTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateCompleteProjects"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="id"
    editorMode="gui"
    notificationDuration={4.5}
    records="{{completeProjectsTable.changesetArray}}"
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="project_tracker"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="completeProjectsTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getSpecialInfo"
    isMultiplayerEdited={false}
    query={include("./lib/getSpecialInfo.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="updateSpecialText"
    actionType="UPDATE_OR_INSERT_BY"
    changeset={'[{"key":"text","value":"{{specialTextArea.value}}"}]'}
    editorMode="gui"
    filterBy={
      '[{"key":"account_name","value":"{{customerVariable.value}}","operation":"="}]'
    }
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="special_tracker"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateLinks"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"context","value":"{{linksUpdate.data.context}}"},{"key":"linear","value":"{{linksUpdate.data.linear}}"},{"key":"gong_link","value":"{{linksUpdate.data.gong_link}}"}]'
    }
    changesetObject="{{linksUpdate.data}}"
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{activeRequestTable.selectedRow.id}}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="request_tracker"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="clear"
      params={{ ordered: [] }}
      pluginId="linksUpdate"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="activeRequestTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
</GlobalFunctions>
