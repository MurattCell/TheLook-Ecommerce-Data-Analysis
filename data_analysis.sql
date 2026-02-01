--Tarih aralığımız (06-01-2019 / 17-01-2024)--
SELECT
    MIN(created_at) as baslangic_tarihi,
    MAX(created_at) as bitis_tarihi
FROM orders;
--En çok satan ürün kategorileri neler?--
SELECT
    category, COUNT(*) as satis_adedi
FROM products
GROUP BY category
ORDER BY satis_adedi DESC;
--Durum (Status) dağılımı nasıl ? Ne kadarı iptal (Cancelled), veya iade(Returned)?
/*Complete,31354 --Shipped,37577--
Processing,25156--Returned,12530--Cancelled,18609
*/
SELECT
    status, COUNT(*) as durum
FROM orders
GROUP BY status;
