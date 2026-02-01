# 📊 The Look E-Ticaret Veri Analizi Projesi

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)

Bu proje, Workintech Veri Analitiği eğitimi kapsamında geliştirilen uçtan uca (End-to-End) bir İş Zekası (BI) çalışmasıdır.


https://github.com/user-attachments/assets/c99eda84-e45d-4a6b-8385-e25e36b2bcfd


---

## 🎯 Projenin Amacı
Kurgusal bir e-ticaret firması olan **"The Look"**un ham satış ve müşteri verilerini analiz ederek; yönetim ekibinin **satış trendlerini, iade oranlarını ve müşteri davranışlarını** tek bir ekrandan takip edebilmesini sağlamak.

## 🛠️ Kullanılan Teknolojiler ve Süreç

Projede verinin doğruluğundan görselleştirilmesine kadar şu adımlar izlenmiştir:

* **SQL (PostgreSQL):** Veri keşfi (Data Exploration), satır/sütun tutarlılık kontrolleri ve tablolar arası ilişkilerin (Foreign Key) analizi.
* **Veri Modelleme:** Power BI üzerinde **Star Schema** mimarisi kurularak performans artırıldı.
* **DAX (Data Analysis Expressions):** `DISTINCTCOUNT`, `CALCULATE`, `TIME INTELLIGENCE` fonksiyonları ile dinamik metrikler (Örn: Aktif Müşteri Sayısı) oluşturuldu.
* **Görselleştirme:** Harita, KPI kartları ve Donut grafikleri ile etkileşimli dashboard tasarımı.

---

## 🧠 Veri Modeli (Star Schema)

Karmaşık veri setleri, analiz performansını artırmak için "Fact" ve "Dimension" tabloları olarak ayrıştırılmıştır.


<img width="1328" height="794" alt="Relational Data Modeling" src="https://github.com/user-attachments/assets/a68a6ab7-f6c6-4706-a7fe-9daba1d30dde" />

---

## 💡 Çıkarımlar ve İş İçgörüleri (Business Insights)

Veri analizi sonucunda elde edilen kritik bulgular:

1.  **Müşteri Sadakati:** Toplam kayıtlı üye sayısı 100K olmasına rağmen, seçili dönemdeki aktif müşteri oranı dönemsel dalgalanmalar göstermektedir.
2.  **İade Analizi:** Bazı ürün kategorilerindeki iade oranlarının ortalamanın üzerinde olduğu tespit edilmiştir (Detaylar dashboard sol panelde).
3.  **Küresel Dağılım:** Müşteri yoğunluğu Amerika ve Avrupa kıtasında toplanırken, Asya pazarında büyüme potansiyeli görülmektedir.

---

## 📂 Dosyalar ve Linkler

GitHub dosya boyutu sınırları nedeniyle, `.pbix` dosyası harici kaynakta tutulmaktadır:

* 📊 **Power BI Proje Dosyası (.pbix):** [Google Drive Üzerinden İndir](https://drive.google.com/file/d/1wEv65Yndcf8-c3YtoGPw3c2bS-LCn2x9T/view?usp=sharing)
* 💾 **Veri Seti (Kaggle):** [The Look E-Commerce Dataset](https://www.kaggle.com/datasets/mustafakeser4/looker-ecommerce-bigquery-dataset)
* 🔗 **LinkedIn Profilim:** [Murat Çelik](https://www.linkedin.com/in/murattcell)

---

> **Not:** Bu proje eğitim amaçlıdır.


