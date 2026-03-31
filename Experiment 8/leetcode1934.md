select 
    s.user_id,
    round(
        ifnull(sum(c.action = 'confirmed') / count(c.action), 0),
        2
    ) AS confirmation_rate
from Signups s
left join Confirmations c
    on s.user_id = c.user_id
group by s.user_id;

<img width="1894" height="867" alt="image" src="https://github.com/user-attachments/assets/7470aa37-fb77-4273-80c2-b5410701f203" />
