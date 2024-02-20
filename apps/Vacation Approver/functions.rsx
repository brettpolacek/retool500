<GlobalFunctions>
  <SqlQueryUnified
    id="getRequests"
    isMultiplayerEdited={false}
    query={include("./lib/getRequests.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    resourceTypeOverride=""
    transformer="const mappedData = getRequests.data.map(row => {
  return{
    employeeName: row.name
  };


"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="approveRequest"
    actionType="UPDATE_BY"
    changeset={'[{"key":"status","value":"Approved"}]'}
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{table1.selectedRow.id}}","operation":"="}]'
    }
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    runWhenModelUpdates={false}
    tableName="requests"
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="rejectRequest"
    actionType="UPDATE_BY"
    changeset={'[{"key":"status","value":"Rejected"}]'}
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{table1.selectedRow.id}}","operation":"="}]'
    }
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    runWhenModelUpdates={false}
    tableName="requests"
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="updateRemainingDays"
    isMultiplayerEdited={false}
    query={include("./lib/updateRemainingDays.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    runWhenModelUpdates={false}
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <JavascriptQuery
    id="calculateDays"
    query={include("./lib/calculateDays.js", "string")}
    resourceName="JavascriptQuery"
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="getUsers"
    query={include("./lib/getUsers.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    resourceTypeOverride=""
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="updateUsers"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="id"
    changeset={'[{"key":"name","value":"{{table2.changesetArray}}"}]'}
    changesetIsObject={true}
    changesetObject="{{table2.changesetArray}}"
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{table2.selectedRow.id}}","operation":"="}]'
    }
    query={include("./lib/updateUsers.sql", "string")}
    records="{{table2.changesetArray}}"
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="users"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getUsers"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getFinancials"
    notificationDuration={4.5}
    query={include("./lib/getFinancials.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="df2d1038-c23f-4518-9efe-79843a7bae1a"
    warningCodes={[]}
  />
  <RetoolAIQuery
    id="query9"
    instruction="write me a poem for Brett."
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
</GlobalFunctions>
