select e.name, b.bonus from employee e
left join bonus b
on e.empId = b.empId
where bonus < 1000 or bonus is null

<img width="1906" height="703" alt="image" src="https://github.com/user-attachments/assets/f2672170-4456-4732-8690-3c93f39d612c" />
