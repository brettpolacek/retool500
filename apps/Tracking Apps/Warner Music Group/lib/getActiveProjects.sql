SELECT
  *
FROM
  project_tracker
WHERE
  account_name = {{customerVariable.value}}
  AND status <> 'Completed'
AND name ILIKE '%' || {{activeProjectSearch.value}} || '%'