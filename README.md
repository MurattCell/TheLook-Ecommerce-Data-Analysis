# The Look E-Ticaret Veri Analizi Projesi 📊

Bu proje, **Workintech Veri Analitiği** eğitimi kapsamında gerçekleştirilen uçtan uca bir veri analizi çalışmasıdır.

<img width="1456" height="794" alt="dashboard" src="https://github.com/user-attachments/assets/b7d613c3-1fbb-446d-bc20-e84998f3603f" />

## 🚀 Proje Özeti
Kurgusal bir e-ticaret şirketi olan "The Look"un ham verileri **PostgreSQL** üzerinde analiz edilmiş, **Star Schema** yapısında modellenmiş ve **Power BI** ile stratejik bir yönetim paneline dönüştürülmüştür.
<img width="1328" height="794" alt="Relational Data Modeling" src="https://github.com/user-attachments/assets/1f30c421-77bd-4061-aeb1-cf0e4d92ed96" />

---

## 🛠 1. Aşama: SQL ile Veri Kontrolü ve Keşif (Data Validation)
Power BI aşamasına geçmeden önce, verinin tutarlılığını anlamak için **PostgreSQL** üzerinde kritik kontroller gerçekleştirdim. Veriyi doğrudan görselleştirmek yerine, önce SQL sorguları ile şu sorulara cevap aradım:

### 📅 A) Tarih Aralığı Kontrolü
Verisetinin kapsamını doğruladım.
```sql
-- Sonuç: 06-01-2019 ile 17-01-2024 arası veriler mevcut.
SELECT
    MIN(created_at) as baslangic_tarihi,
    MAX(created_at) as bitis_tarihi
FROM orders;
SELECT
    category, COUNT(*) as satis_adedi
FROM products
GROUP BY category
ORDER BY satis_adedi DESC;
/* Özet Bulgular:
- Complete: 31,354 | Shipped: 37,577
- Processing: 25,156 | Cancelled: 18,609
- Returned: 12,530 (Analiz edilmesi gereken kritik grup)
*/
SELECT
    status, COUNT(*) as durum
FROM orders
GROUP BY status;

---DAX HESAPLAMALARI-----

İade Oranı = 
VAR IadeSayisi = CALCULATE(COUNTROWS('order_items'), 'order_items'[status] = "Returned") + 0
VAR ToplamSatis = COUNTROWS('order_items')
RETURN
DIVIDE(IadeSayisi, ToplamSatis, 0)

Harcama Kategorisi = 
VAR ToplamHarcama = CALCULATE(SUM(order_items[sale_price]))
RETURN
    IF(ToplamHarcama < 100, "1. Düşük (0-100$)",
        IF(ToplamHarcama >= 100 && ToplamHarcama < 500, "2. Orta (100-500$)", "3. Yüksek (500$+)"))
```
https://drive.google.com/file/d/1A-l0SUffya87-pH2hBSNtC5t1_lp1T4K/view?usp=sharing

https://www.kaggle.com/datasets/mustafakeser4/looker-ecommerce-bigquery-dataset

www.linkedin.com/in/murattcell

#Workintech #PostgreSQL #SQL #PowerBI #DataAnalysis #TheLookProject #VeriAnalizi #Portfolio



