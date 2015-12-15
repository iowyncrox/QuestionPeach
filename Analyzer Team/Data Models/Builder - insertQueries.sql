insert into gwu_questionnaire values(1,'University Student Graduate','2014-04-04','Education',True,True,'Tejasvi');

insert into GWU_question values(1,1,'Multiple Choice, Single Value','How effective was the teaching within your major at this university?',False);

insert into GWU_AnswerChoice values(1,1,1,'Extremely Effective');
insert into GWU_AnswerChoice values(2,1,1,'Moderately effective');
insert into GWU_AnswerChoice values(3,1,1,'Slightly effective');
insert into GWU_AnswerChoice values(4,1,1,'Not at all effective');

insert into GWU_question values(2,1,'Multiple Choice, Single Value','How effective was the teaching outside your major at this university?',False); 

insert into GWU_AnswerChoice values(1,1,2,'Extremely Effective'); 
insert into GWU_AnswerChoice values(2,1,2,'Moderately effective'); 
insert into GWU_AnswerChoice values(3,1,2,'Not at all effective'); 
insert into GWU_AnswerChoice values(4,1,2,'Not applicable');

insert into GWU_question values(3,1,'Text Box','What is your most favorite experience in this university?',False); 
insert into GWU_question values(4,1,'Text Box','What is your least favorite experience in this university?',False); 

insert into GWU_question values(5,1,'Multiple Choice, Single Value','How likely are you to recommend this university to others?',False);

insert into GWU_AnswerChoice values(1,1,5,'Extremely likely'); 
insert into GWU_AnswerChoice values(2,1,5,'Moderately likely'); 
insert into GWU_AnswerChoice values(3,1,5,'Slightly likely'); 
insert into GWU_AnswerChoice values(4,1,5,'Not at all likely');



insert into gwu_questionnaire values(2,'Employee Job Satisfaction','2013-03-16','Employee Feedback',True,True,'Ashley');

insert into GWU_question values(1,2,'Multiple Choice, Single Value','How challenging is your job?',False);

insert into GWU_AnswerChoice values(1,2,1,'Extremely challenging');
insert into GWU_AnswerChoice values(2,2,1,'Moderately challenging');
insert into GWU_AnswerChoice values(3,2,1,'Slightly challenging');
insert into GWU_AnswerChoice values(4,2,1,'Not at all challenging');

insert into GWU_question values(2,2,'Multiple Choice, Multiple Value','What were your major responsibilities you handled?',False);

insert into GWU_AnswerChoice values(1,2,2,'Developing');
insert into GWU_AnswerChoice values(2,2,2,'Testing');
insert into GWU_AnswerChoice values(3,2,2,'Analysing');
insert into GWU_AnswerChoice values(4,2,2,'Intergrating');
insert into GWU_AnswerChoice values(5,2,2,'Managing');
insert into GWU_AnswerChoice values(6,2,2,'Reporting');
insert into GWU_AnswerChoice values(7,2,2,'Other');

insert into GWU_question values(3,2,'Text Box','Provide any changes you would like to see in your working environment to make your work comfortable',False);

insert into GWU_question values(4,2,'NSP','How would you rate your employer(on the scale of 10)?',False);

insert into GWU_AnswerChoice values(1,2,4,'1');
insert into GWU_AnswerChoice values(2,2,4,'2');
insert into GWU_AnswerChoice values(3,2,4,'3');
insert into GWU_AnswerChoice values(4,2,4,'4');
insert into GWU_AnswerChoice values(5,2,4,'5');
insert into GWU_AnswerChoice values(6,2,4,'6');
insert into GWU_AnswerChoice values(7,2,4,'7');
insert into GWU_AnswerChoice values(8,2,4,'8');
insert into GWU_AnswerChoice values(9,2,4,'9');
insert into GWU_AnswerChoice values(10,2,4,'10');

insert into GWU_question values(5,2,'Multiple Choice, Single Value','How likely are you to look for another job outside the company?',False);

insert into GWU_AnswerChoice values(1,2,5,'Extremely likely'); 
insert into GWU_AnswerChoice values(2,2,5,'Moderately likely'); 
insert into GWU_AnswerChoice values(3,2,5,'Slightly likely'); 
insert into GWU_AnswerChoice values(4,2,5,'Not at all likely');


insert into gwu_questionnaire values(3,'Non-Profit Volunteer','2014-03-22','Volunteer Feedback',True,True,'Sachin');

insert into GWU_question values(1,3,'Multiple Choice, Single Value','How meaningful was the volunteer work you did for this organization??',False); 

insert into GWU_AnswerChoice values(1,3,1,'Extremely Meaningful'); 
insert into GWU_AnswerChoice values(2,3,1,'Very Meaningful'); 
insert into GWU_AnswerChoice values(3,3,1,'Moderate Meaningful'); 
insert into GWU_AnswerChoice values(4,3,1,'Slightly Meaningful'); 
insert into GWU_AnswerChoice values(5,3,1,'Not at all Meaningful'); 

insert into GWU_question values(2,3,'Multiple Choice, Single Value','How easy was it to get along with the other volunteers at this organization???',False);

insert into GWU_AnswerChoice values(1,3,2,'Extremely easy'); 
insert into GWU_AnswerChoice values(2,3,2,'Very easy'); 
insert into GWU_AnswerChoice values(3,3,2,'Moderate easy'); 
insert into GWU_AnswerChoice values(4,3,2,'Slightly easy'); 
insert into GWU_AnswerChoice values(5,3,2,'Not at all easy'); 

insert into GWU_question values(3,3,'Text Box',' In a typical month, about how many hours do you volunteer?',False); 
insert into GWU_question values(4,3,'Text Box','Give breif discription of your responsibilities',False); 

insert into GWU_question values(5,3,'Multiple Choice, Multiple Value','Select the tasks you performed from the below list',False);

insert into GWU_AnswerChoice values(1,3,5,'Served Homeless'); 
insert into GWU_AnswerChoice values(2,3,5,'Managed any event'); 
insert into GWU_AnswerChoice values(3,3,5,'Participated in Hunger Strike'); 
insert into GWU_AnswerChoice values(4,3,5,'Participated in Fund Raising Events'); 
insert into GWU_AnswerChoice values(5,3,5,'Other'); 
insert into GWU_AnswerChoice values(6,3,5,'None');


insert into GWU_session values(1,'Monisha',True,'00:10:00','2014-05-03','120.32.255.03','Washington','USA');
insert into GWU_session values(2,'Nada',True, '00:12:00','2014-04-15','120.32.255.05','Washington','USA');
insert into GWU_session values(3,null,True, '00:09:00','2014-07-12','120.36.255.17','Virginia','USA');
insert into GWU_session values(4,null,False, '00:20:00','2014-08-15','120.36.255.17','San Fransisco','USA');
insert into GWU_session values(5,'null',True, '00:19:00','2014-09-11','120.32.255.22','Delhi','India');
insert into GWU_session values(8,null,True, '00:09:00','2013-05-12','130.45.567.89','Beijing','China');
insert into GWU_session values(9,'Sunny',True, '00:12:00','2013-08-24','176.34.56.234','Las Vegas','USA');
insert into GWU_session values(10,'Iswarya',True, '00:20:00','2014-01-31','135.234.34.56','Bangalore','India');
insert into GWU_session values(11,null,False,'00:07:00','2013-06-18','234.456.34.67','Arizona','USA');
insert into GWU_session values(6,'neeraj',True, '00:19:00','2014-08-08','120.32.255.03','Dubai','Emirates'); 
insert into GWU_session values(7,'chandan',True, '00:18:00','2014-01-05','120.32.255.05','San Diego','USA');

insert into gwu_response values(1,1,1,1,1,'Multiple Choice, Single Value','Extremely Effective',null,null); 
insert into gwu_response values(2,1,1,2,4,'Multiple Choice, Single Value','Not Applicable',null,null); 
insert into gwu_response values(3,1,1,3,null,'Text Box','Good Library,Efficient Classrooms',null,null); 
insert into gwu_response values(4,1,1,4,null,'Text Box','N/A',null,null); 
insert into gwu_response values(5,1,1,5,1,'Multiple Choice, Single Value','Extremly Likely',null,null);

insert into gwu_response values(6,2,1,1,2,'Multiple Choice, Single Value','Moderately effective',null,null); 
insert into gwu_response values(7,2,1,2,2,'Multiple Choice, Single Value','Moderately effective',null,null); 
insert into gwu_response values(8,2,1,3,null,'Text Box','Good management Good secutiry',null,null); 
insert into gwu_response values(9,2,1,4,null,'Text Box','Lack of resources',null,null); 
insert into gwu_response values(10,2,1,5,2,'Multiple Choice, Single Value','Moderately likely',null,null);

insert into gwu_response values(11,3,1,1,4,'Multiple Choice, Single Value','Not at all effective',null,null); 
insert into gwu_response values(12,3,1,2,2,'Multiple Choice, Single Value','Moderately effective',null,null); 
insert into gwu_response values(13,3,1,3,null,'Text Box','N/A',null,null); 
insert into gwu_response values(14,3,1,4,null,'Text Box','Lack of good faculty, lack of resourses, not good library',null,null); 
insert into gwu_response values(15,3,1,5,4,'Multiple Choice, Single Value','Not at all likely',null,null);

insert into gwu_response values(16,4,1,1,1,'Multiple Choice, Single Value','Extremely Effective',null,null); 
insert into gwu_response values(17,4,1,2,1,'Multiple Choice, Single Value','Extremely Effective',null,null); 
insert into gwu_response values(18,4,1,3,null,'Text Box','Great library,Good food within campus, great,good alumini',null,null); 

insert into gwu_response values(19,5,1,1,3,'Multiple Choice, Single Value','Slightly Effective',null,null); 
insert into gwu_response values(20,5,1,2,3,'Multiple Choice, Single Value','Not at all effective',null,null); 
insert into gwu_response values(21,5,1,3,null,'Text Box','n/a',null,null); 
insert into gwu_response values(22,5,1,4,null,'Text Box','Not good library',null,null); 
insert into gwu_response values(23,5,1,5,4,'Multiple Choice, Single Value','Not at all Likely',null,null);

insert into gwu_response values(24,8,2,1,1,'Multiple Choice, Single Value','Extremely challenging',null,null); 
insert into gwu_response values(25,8,2,2,1,'Multiple Choice, Multiple Value','Developing',null,null); 
insert into gwu_response values(26,8,2,2,2,'Multiple Choice, Multiple Value','Testing',null,null); 
insert into gwu_response values(27,8,2,2,6,'Multiple Choice, Multiple Value','Reporting',null,null); 
insert into gwu_response values(28,8,2,3,null,'Text Box','N/A',null,null); 
insert into gwu_response values(29,8,2,4,9,'NSP','9',null,null); 
insert into gwu_response values(30,8,2,5,4,'Multiple Choice, Single Value','Not at all likely',null,null);

insert into gwu_response values(31,9,2,1,3,'Multiple Choice, Single Value','Slightly challenging',null,null); 
insert into gwu_response values(32,9,2,2,3,'Multiple Choice, Multiple Value','Managing',null,null); 
insert into gwu_response values(33,9,2,2,4,'Multiple Choice, Multiple Value','Integrating',null,null); 
insert into gwu_response values(34,9,2,3,null,'Text Box','Provide night shuttle to drop employees after 9 PM',null,null); 
insert into gwu_response values(35,9,2,4,3,'NSP','3',null,null); 
insert into gwu_response values(36,9,2,5,2,'Multiple Choice, Single Value','Moderately likely',null,null);

insert into gwu_response values(37,10,2,1,2,'Multiple Choice, Single Value','Moderately challenging',null,null); 
insert into gwu_response values(38,10,2,2,2,'Multiple Choice, Multiple Value','Testing',null,null);  
insert into gwu_response values(40,10,2,3,null,'Text Box','N/A',null,null); 
insert into gwu_response values(41,10,2,4,6,'NSP','6',null,null); 
insert into gwu_response values(42,10,2,5,2,'Multiple Choice, Single Value','Moderately likely',null,null);

insert into gwu_response values(43,11,2,1,4,'Multiple Choice, Single Value','Not at all challenging',null,null); 
insert into gwu_response values(44,11,2,2,6,'Multiple Choice, Multiple Value','Reporting',null,null); 

insert into gwu_response values(45,6,3,1,1,'Multiple Choice, Single Value','Extremely Meaningful',null,null); 
insert into gwu_response values(46,6,3,2,3,'Multiple Choice, Single Value','Moderately Easy',null,null); 
insert into gwu_response values(47,6,3,3,null,'Text Box','15',null,null); 
insert into gwu_response values(48,6,3,4,null,'Text Box','I have done receptionist job in old age home',null,null); 
insert into gwu_response values(49,6,3,5,1,'Multiple Choice, Multi Value','Served Homeless',null,null); 
insert into gwu_response values(50,6,3,5,5,'Multiple Choice, Multi Value','Other',null,null); 

insert into gwu_response values(51,7,3,1,4,'Multiple Choice, Single Value','Slightly Meaningful',null,null); 
insert into gwu_response values(52,7,3,2,4,'Multiple Choice, Single Value','Slightly easy',null,null); 
insert into gwu_response values(53,7,3,3,null,'Text Box','1',null,null); 
insert into gwu_response values(54,7,3,4,null,'Text Box','I was given responsibility to make food for homeless',null,null); 
insert into gwu_response values(55,7,3,5,1,'Multiple Choice, Multi Value','Served Homeless',null,null); 
insert into gwu_response values(56,7,3,5,5,'Multiple Choice, Multi Value','Other',null,null); 

insert into gwu_response values(57,1,3,1,3,'Multiple Choice, Single Value','Moderate Meaningful',null,null); 
insert into gwu_response values(58,1,3,2,2,'Multiple Choice, Single Value','Very easy',null,null); 
insert into gwu_response values(59,1,3,3,null,'Text Box','22',null,null); 
insert into gwu_response values(60,1,3,4,null,'Text Box','I was given responsibility to manage all the events of the organization and making the schedule of the volunteers',null,null); 
insert into gwu_response values(61,1,3,5,2,'Multiple Choice, Multi Value','Managed any Event',null,null);
insert into gwu_response values(62,1,3,5,5,'Multiple Choice, Multi Value','Other',null,null);
