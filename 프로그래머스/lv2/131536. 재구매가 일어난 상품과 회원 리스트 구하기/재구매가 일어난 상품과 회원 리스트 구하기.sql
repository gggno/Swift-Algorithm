-- 코드를 입력하세요
SELECT ONLINE_SALE.USER_ID, ONLINE_SALE.PRODUCT_ID
FROM ONLINE_SALE
GROUP BY ONLINE_SALE.USER_ID, ONLINE_SALE.PRODUCT_ID
HAVING COUNT(*) > 1
ORDER BY ONLINE_SALE.USER_ID ASC, ONLINE_SALE.PRODUCT_ID DESC
