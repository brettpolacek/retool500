SELECT
  *
FROM
  request_tracker
WHERE
  account_name = {{customerVariable.value}}
  AND status = 'Resolved'
AND name ILIKE '%' || {{completeRequestSearch.value}} || '%'