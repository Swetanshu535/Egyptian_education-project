create database Egypt_education;
use Egypt_education;

select * from education_typea;
select * from education_typeb;

-- Count the student_id
select student_id, count(*)
from education_typea
group by student_id;

-- Show the name of the students whose name starts with T
select ï»¿Student_Name
from education_typea
where ï»¿Student_Name like "T%";

-- rank the students based on their subject 6. Show the name 
select v.subject_6,w.ï»¿Student_Name,rank() over (order by v.subject_6 desc) as rnk
from education_typea w inner join education_typeb v on w.student_id=v.student_id;

-- provide roll number to the students based on subject 9
select w.ï»¿Student_Name,v.Subject_9,row_number() over (Order by v.Subject_9 desc) as roll_number
from education_typea w inner join education_typeb v on w.student_id=v.student_id;

-- Show the student and education type and their grade in subject 7
select w.ï»¿Student_Name,w.Education_type,v.Subject_7
from education_typea w inner join education_typeb v on w.student_id=v.student_id;

-- Show the mother degree and average of subject 5
select w.ï»¿Student_Name,w.Mother_Degree,Avg(v.Subject_5)
from education_typea w inner join education_typeb v on w.student_id=v.student_id
group by w.ï»¿Student_Name,w.Mother_Degree