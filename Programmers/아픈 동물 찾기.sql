-- https://school.programmers.co.kr/learn/courses/30/lessons/59036
-- 아픈 동물1의 아이디와 이름을 조회하는 SQL문, 결과는 아이디 순
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'Sick'
ORDER BY ANIMAL_ID;