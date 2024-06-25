create database movies
---------------------------------------
create  table movie(
 mov_id INT PRIMARY KEY identity(1,1),
 mov_title  nvarchar(50),
  mov_year  int,
  mov_time int,
  mov_lang varchar(50),
  mov_dt_rel datetime,
  mov_rel_country nvarchar(5)
 )
 ------------------------------------------------
 create  table actor(
 act_id INT PRIMARY KEY identity(1,1),
 act_fname  nvarchar(20),
  act_lname nvarchar(20),
   act_gender varchar(1)
 )
 ----------------------------------------------------
  create  table director(
 dir_id INT PRIMARY KEY identity(1,1),
 dir_fname  nvarchar(20),
 dir_lname nvarchar(20),
   
 )
 ------------------------------------------------
 create  table genres(
 gen_id INT PRIMARY KEY identity(1,1),
 gen_title  nvarchar(20),
  )
  ---------------------------------------------
  create  table reviewer(
 rev_id INT PRIMARY KEY identity(1,1),
 rev_name  nvarchar(20),)
 -------------------------------------------
 create  table movie_cast (
 act_id INT  ,
 mov_id  int,
 role nvarchar(30),
   
 )
 --------------------------
 create  table mov_direction(
dir_id INT  ,
mov_id  int,
  )
  --------------------------------------------------
  create  table mov_genres(
  mov_id int,
  gen_id int
   )
   ----------------------------------
   create  table rating(
 mov_id INT ,
 rev_id int,
rev_stars int,
num_of_rating int
   
 )
 ------------------------------------------

alter table movie_cast  ADD CONSTRAINT mov_act FOREIGN KEY  (act_id)
REFERENCES  actor(act_id)

alter table movie_cast  ADD CONSTRAINT mov_mov FOREIGN KEY  (mov_id)
REFERENCES movie(mov_id)

alter table mov_direction  ADD CONSTRAINT mov_dir FOREIGN KEY  (mov_id)
REFERENCES movie(mov_id)

alter table mov_direction  ADD CONSTRAINT dir_mov FOREIGN KEY  (dir_id)
REFERENCES director(dir_id)

alter table  mov_genres  ADD CONSTRAINT mov_gen FOREIGN KEY  (mov_id)
REFERENCES movie(mov_id)

alter table rating  ADD CONSTRAINT mov_rat FOREIGN KEY  (mov_id)
REFERENCES movie(mov_id)

alter table rating ADD CONSTRAINT rev_rat FOREIGN KEY  (rev_id)
REFERENCES reviewer(rev_id)

alter table  mov_genres  ADD CONSTRAINT gen_gen FOREIGN KEY  (gen_id)
REFERENCES genres(gen_id)