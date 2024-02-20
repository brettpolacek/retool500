SELECT 
    requests.id AS request_id,
    requests.*,
    managers.name AS manager_name,
    managers.id AS manager_id,
    employees.name AS employee_name,
    employees.id AS employee_id,
    employees.remaining_days_off AS employee_remaining_days
FROM requests
JOIN managers ON requests.manager_id = managers.id
JOIN employees ON requests.employee_id = employees.id
WHERE managers.email = {{current_user.email}};
