-- 코드를 입력하세요
SELECT COUNT(DISTINCT(ANIMAL_INS.NAME)) AS 'COUNT'
FROM ANIMAL_INS
WHERE ANIMAL_INS.NAME IS NOT NULL
