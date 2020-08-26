-- LeetCode Solution No.0627.
-- https://leetcode.com/problems/swap-salary
-- Yifan Gu

create table if not exists salary(id int, name varchar(100), sex char(1), salary int)
Truncate table salary
insert into salary (id, name, sex, salary) values ('1', 'A', 'm', '2500')
insert into salary (id, name, sex, salary) values ('2', 'B', 'f', '1500')
insert into salary (id, name, sex, salary) values ('3', 'C', 'm', '5500')
insert into salary (id, name, sex, salary) values ('4', 'D', 'f', '500')

-- Write your MySQL query statement below
UPDATE
  salary
SET
  sex = IF(sex = 'm', 'f', 'm')