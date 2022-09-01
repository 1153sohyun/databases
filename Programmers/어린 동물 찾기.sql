--https://school.programmers.co.kr/learn/courses/30/lessons/59037
-- 젊은 동물1의 아이디와 이름을 조회하는 SQL 문, 결과는 아이디 순
SELECT ANIMAL_ID, NAME From ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged'
ORDER By ANIMAL_ID;