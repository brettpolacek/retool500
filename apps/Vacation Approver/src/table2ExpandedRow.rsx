<ExpandedRow id="table2ExpandedRow">
  <PlotlyChart
    id="chart2"
    dataseries={{
      ordered: [
        {
          0: {
            ordered: [
              { label: "id" },
              { datasource: "{{getFinancials.data['id']}}" },
              { chartType: "bar" },
              { aggregationType: "sum" },
              { color: "#033663" },
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
              { label: "open" },
              { datasource: "{{getFinancials.data['open']}}" },
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
        {
          2: {
            ordered: [
              { label: "high" },
              { datasource: "{{getFinancials.data['high']}}" },
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
          3: {
            ordered: [
              { label: "low" },
              { datasource: "{{getFinancials.data['low']}}" },
              { chartType: "bar" },
              { aggregationType: "sum" },
              { color: "#DAECFC" },
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
          4: {
            ordered: [
              { label: "close" },
              { datasource: "{{getFinancials.data['close']}}" },
              { chartType: "bar" },
              { aggregationType: "sum" },
              { color: "#EECA86" },
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
          5: {
            ordered: [
              { label: "adj_close" },
              { datasource: "{{getFinancials.data['adj_close']}}" },
              { chartType: "bar" },
              { aggregationType: "sum" },
              { color: "#E9AB11" },
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
          6: {
            ordered: [
              { label: "volume" },
              { datasource: "{{getFinancials.data['volume']}}" },
              { chartType: "bar" },
              { aggregationType: "sum" },
              { color: "#D47E2F" },
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
    datasourceJS="{{getFinancials.data}}"
    skipDatasourceUpdate={true}
    xAxis="{{getFinancials.data.date}}"
    xAxisDropdown="date"
  />
</ExpandedRow>
