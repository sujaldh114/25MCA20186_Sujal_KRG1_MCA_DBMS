create table student (
    student_id INT,
    student_name VARCHAR(50),
    marks INT
);

insert into student values
(1, 'Amit', 95),
(2, 'Riya', 82),
(3, 'Rahul', 68),
(4, 'Sneha', 55),
(5, 'Karan', 40),
(6, 'Neha', 90);


select student_name, marks,
case
when marks >= 90 then 'Excellent'
when marks between 75 and 89 then 'Good'
when marks between 50 and 74 then 'Average'
else 'Poor'
end as performance
from student;

alter table student
add column status VARCHAR(25);

update student
set status =
case
when marks >= 75 then 'Approved'
when marks between 50 and 74 then 'Needs Improvement'
else 'Not Approved'
end;

select * from student;


do $$
declare
    student_marks int := 68;
begin
    if student_marks >= 90 then
        raise notice 'Grade: Excellent';
    elsif student_marks >= 75 then
        raise notice 'Grade: Good';
    elsif student_marks >= 50 then
        raise notice 'Grade: Average';
    else
        raise notice 'Grade: Poor';
    end if;
end $$;


select
student_name,
marks,
status
from student
order by
case
when marks >= 90 then 1
when marks between 75 and 89 then 2
when marks between 50 and 74 then 3
else 4
end;