-- 코드를 입력하세요
SELECT ANIMAL_INS.ANIMAL_ID, ANIMAL_INS.NAME
FROM ANIMAL_INS
WHERE ANIMAL_INS.INTAKE_CONDITION != 'Aged'
ORDER BY ANIMAL_INS.ANIMAL_ID ASC