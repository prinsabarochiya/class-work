create database collegemanagementsystem;
use collegemanagementsystem;
 
 /* create */
 
 
  create table student(
          student_id int,
          student_Name varchar(20),
          student_rollno int,
          student_gendar varchar(20),
		  student_standard varchar(20),
          student_age int,
          student_mobileno int,
          student_emailid varchar(30),
          student_address varchar(70),
          primary key(student_id));
         
         create table course(
          course_id int,
          course_name varchar (20),
          collegeyear int,
          primary key (course_id));
          
create table sub(
             sub_id int,
             sub_name varchar(20),
             course_id int,
             primary key (sub_id),
             foreign key (course_id) references course(course_id));
             
create table sched(
             sched_id int,
             course_id int,
             sub_id int,
             student_id int,
             start_time int,
             end_time int,
			 primary key (sched_id),
			 foreign key (course_id) references course(course_id),
			 foreign key (sub_id) references sub(sub_id),
             foreign key (student_id) references student(student_id));
             
     /* insert */       
             
  insert into student(student_id,student_Name,student_rollno,student_mobileno,student_age,student_emailid,student_standard,student_gendar,student_address)
  value ('1','Ayushi','1','123456','22','a@gmail.com','BSc','female','jamnagar');

  insert into student(student_id,student_Name,student_rollno,student_mobileno,student_age,student_emailid,student_standard,student_gendar,student_address)
  value ('2','Drashti','5','123489','23','d@gmail.com','MSc','female','amreli');
             
  insert into student(student_id,student_Name,student_rollno,student_mobileno,student_age,student_emailid,student_standard,student_gendar,student_address)
  value ('3','Richa','9','123457','23','r@gmail.com','Mbbs','female','jamnagar');
             
  insert into student(student_id,student_Name,student_rollno,student_mobileno,student_age,student_emailid,student_standard,student_gendar,student_address)
  value ('4','Urvashi','15','123654','22','u@gmail.com','egineering','female','rajkot');
  
  insert into course(course_id,course_name,collegeyear)
  value ('1','BSc','3');
  
  insert into course(course_id,course_name,collegeyear)
  value ('2','MSc','2');
  
  insert into course(course_id,course_name,collegeyear)
  value ('3','Mbbs','4.5');          
             
  insert into course(course_id,course_name,collegeyear)
  value ('4','Bed','2');                
             
   insert into course(course_id,course_name,collegeyear)
   value ('5','engineering','4');              

   insert into sub(sub_id,sub_name,course_id)
   value ('1','chemistry','2');
   
  insert into sub(sub_id,sub_name,course_id)
   value ('2','physics','1');  
   
   insert into sub(sub_id,sub_name,course_id)
   value ('3','maths','5');
   
   insert into sub(sub_id,sub_name,course_id)
   value ('4','immunology','4');      
          
    insert into sched(sched_id,course_id,sub_id,student_id,start_time,end_time)
    value ('1','4','4','3','9.00','2.00');
          
    insert into sched(sched_id,course_id,sub_id,student_id,start_time,end_time)
    value ('2','2','1','2','11.00','4.00');         
     
	insert into sched(sched_id,course_id,sub_id,student_id,start_time,end_time)
    value ('3','1','2','1','10.00','3.00');  

   insert into sched(sched_id,course_id,sub_id,student_id,start_time,end_time)
    value ('4','5','3','4','08.45','12.00');
    
    
    /* update */
    
    
    use collegemanagementsystem;
    update course set course_name='Bcom' where course_id='1'
    
    update student set student_Name='prinsa' where student_Name='Richa'
     set sql_safe_updates=0
     
     
  /* delete*/
    
    
    delete from student where student_age=1
    delete from sched where start_time=2
    
    
    /* select*/


select sub_name from sub;
select course_name from course;


/* distinct*/


select distinct student_rollno from student;
select distinct student_Name,student_address from student;
select distinct student_standard,course_name from student,course;


/* where */


select student_Name from student where student_id in (2,3,4);
select end_time from sched where sched_id (1,3);


/* like */


select * from student where student_Name like '3';
select * from course where course_name like '2';


/* order */


select* from student order by student_Name;
select * from student order by student_age desc;


/* group by */


SELECT COUNT(student_id), student_address
FROM student
GROUP BY student_address;


/* join */

select student.student_Name,course.course_name from student Inner join course on student.student_id=course.course_id where collegeyear>2;     
     
/* left join*/

select*
from course left join student on student.student_id=course.course_id

/* right join*/

select*
from course right join student on student.student_id=course.course_id
             
             