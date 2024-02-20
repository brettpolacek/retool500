UPDATE
  users
SET
  name = {{table2.changesetArray.values}}
WHERE
  id = {{table2.changesetArray.id}};