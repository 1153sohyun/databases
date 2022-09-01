-- https://school.programmers.co.kr/learn/courses/30/lessons/59035
-- 모든 동물의 이름과 보호 시작일을 조회하는 SQL문, 이때 결과는 ANIMAL_ID 역순
SELECT NAME, DATETIME From ANIMAL_INS
ORDER by ANIMAL_ID DESC;