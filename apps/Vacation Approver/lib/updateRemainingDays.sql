UPDATE employees
SET remaining_days_off = remaining_days_off - 
{{calculateDays.data}}
WHERE id = (SELECT employee_id FROM requests WHERE requests.id = {{table1.selectedRow.id}}) 