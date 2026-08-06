# Miuul AI Data Scientist Bootcamp — 21. Dönem Grup Çalışmaları

[![Miuul](https://img.shields.io/badge/Miuul-AI%20Data%20Scientist%20Bootcamp-6C63FF?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJ3aGl0ZSI+PHBhdGggZD0iTTEyIDJMMTMuMDkgOC4yNkwyMCA5TDEzLjA5IDE1Ljc0TDEyIDIyTDEwLjkxIDE1Ljc0TDQgOUwxMC45MSA4LjI2TDEyIDJaIi8+PC9zdmc+)](https://miuul.com/bootcamps/data-scientist-bootcamp)
[![Python](https://img.shields.io/badge/Python-3.9%2B-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white)](https://jupyter.org/)
[![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org/)
[![NumPy](https://img.shields.io/badge/NumPy-013243?style=for-the-badge&logo=numpy&logoColor=white)](https://numpy.org/)
[![SQL Server](https://img.shields.io/badge/MS%20SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)](https://www.microsoft.com/sql-server)

Bu depo, [Miuul AI Data Scientist Bootcamp](https://miuul.com/bootcamps/data-scientist-bootcamp) **21. dönem** grup çalışmalarının ve modül projelerinin merkezi deposudur. Bootcamp boyunca öğrenilen kavramlar, gerçek veri setleri üzerinde uygulanarak Jupyter notebook'ları ve Python script'leri halinde dokümante edilmiştir.

---

## Hakkında

[Miuul AI Data Scientist Bootcamp](https://miuul.com/bootcamps/data-scientist-bootcamp), veri bilimi ve yapay zeka alanında kariyer hedefleyenler için tasarlanmış **14 haftalık** uygulamalı bir eğitim programıdır. Program; Python, SQL, Makine Öğrenmesi, Generative AI ve AI Agent geliştirme gibi konuları gerçek sektör projeleriyle birleştirir.

| | |
|---|---|
| **Eğitmen** | Vahit Keskin |
| **Dönem** | 21. Dönem |
| **Öğrenme modeli** | Canlı ders + video içerik (hibrit) |
| **Grup çalışması** | Haftalık takım oturumları & mentor görüşmeleri |

---

## Depo Yapısı

```
DataScienceBootcamp21.Grup/
│
├── 01.Python Programming For Data Science/   # Modül 1
│   ├── datasets/
│   └── *.ipynb, *.py
│
├── 02.CRM Analytics/                         # Modül 2
│   ├── datasets/
│   └── *.ipynb, *.csv
│
├── 03.Recommendation Systems/                # Modül 3
│   ├── datasets/
│   └── *.ipynb, *.py
│
├── 04.Querying MS SQL/                       # Modül 4
│   ├── flo_data_20K.csv
│   ├── flo.sql
│   └── *.ipynb
│
├── 05.Feature Engineering/                   # Modül 5
│   ├── datasets/
│   └── *.ipynb
│
└── 06.Machine Learning/                      # Modül 6
    ├── datasets/
    │   └── house_prices/                     # Kaggle House Prices (train/test)
    └── *.ipynb
```

---

## Modüller

### Modül 1 — Veri Bilimi için Python Programlama

Python programlamanın temellerinden veri analizi kütüphanelerine kadar kapsamlı bir giriş modülü.

| # | Konu | Dosya |
|---|------|-------|
| 01 | Çalışma Ortamı Ayarları | `01.Çalışma Ortamı Ayarları.ipynb` |
| 02 | Veri Yapıları | `02.Veri Yapıilari.ipynb` |
| 03 | Fonksiyonlar | `03.Fonksiyonlar.ipynb` |
| 04 | Koşullar & Döngüler | `04.Koşullar&Döngüler.ipynb` |
| 05 | Comprehensions | `05.Comprehensions.ipynb` |
| 06 | Python Alıştırmaları | `06.python_alistirmalar.py` |
| 07 | List Comprehension Alıştırmaları | `07.list_comp_alistirmalar.py` |
| 08 | NumPy | `08.Numpy.ipynb` |
| 09 | Pandas | `09.Pandas.ipynb` |
| 10 | Veri Görselleştirme | `10.Veri Görselleştirme.ipynb` |
| 11 | Gelişmiş Fonksiyonel Keşifçi Veri Analizi | `11.Gelişmiş Fonksiyonel Keşifçi Veri Analizi.ipynb` |
| 12 | Pandas Alıştırmalar | `12.Pandas Alıştırmalar.ipynb` |
| 13 | Kural Tabanlı Sınıflandırma | `13.Kural Tabanlı Sınıflandırma.ipynb` |

**Projeler:** NumPy & Pandas uygulamaları, Comprehension alıştırmaları, kural tabanlı sınıflandırma ile potansiyel müşteri getirisi hesaplama.

**Veri setleri:** `advertising.csv`, `breast_cancer.csv`, `persona.csv`

---

### Modül 2 — CRM Analitiği

Müşteri ilişkileri yönetimi, segmentasyon ve yaşam boyu değer (CLTV) analizlerine odaklanan uygulamalı modül.

| # | Konu | Dosya |
|---|------|-------|
| 01 | CRM Analitiğine Giriş | `01. CRM Analitiğine Giriş.ipynb` |
| 02 | RFM Analizi | `02.RFM Analizi.ipynb` |
| 03 | Müşteri Yaşam Boyu Değeri (CLTV) | `03.Müşteri Yaşam Boyu Değeri.ipynb` |
| 04 | CLTV Tahmini | `04. Müşteri Yaşam Boyu Değeri Tahmini.ipynb` |
| 05 | FLO RFM Müşteri Segmentasyonu | `05.FLO RFM Müşteri Segmentasyonu.ipynb` |
| 06 | FLO CLTV Tahmini | `06.FLO CLTV Tahmini.ipynb` |

**Projeler:** Online retail RFM analizi, BG/NBD & Gamma-Gamma modelleri ile CLTV tahmini, FLO müşteri segmentasyonu ve hedef müşteri listesi oluşturma.

**Veri setleri:** `online_retail_II.xlsx`, `flo_data_20k.csv`

**Çıktı dosyaları:** `rfm.csv`, `cltv_prediction.csv`, `flo_cltv_prediction.csv`, `indirim_hedef_musteri_ids.csv`, `yeni_marka_hedef_musteri_id.csv`

---

### Modül 3 — Tavsiye Sistemleri

İçerik temelli ve iş birlikçi filtreleme yöntemlerinden birliktelik kuralı öğrenimine, hibrit öneri sistemlerinden A/B testi uygulamalarına kadar kapsamlı bir modül.

| # | Konu | Dosya |
|---|------|-------|
| 01 | Tavsiye Sistemlerine Giriş & Birliktelik Kuralı Öğrenimi | `01.Recommendation Systems.ipynb` |
| 02 | İçerik Temelli Filtreleme | `02.Content Based Recommendation.ipynb` |
| 03 | İş Birlikçi Filtreleme (Item-Based) | `03.Collabrative Filtering.ipynb` |
| 04 | Kullanıcı Tabanlı İş Birlikçi Filtreleme | `04.User Based Collabrative Filtering.ipynb` |
| 05 | A/B Testi, Örnekleme & Betimsel İstatistik | `05.AB Testing.ipynb` |
| 06 | Armut ARL Projesi | `06. ARMUT ARL PROJE.ipynb` |
| 07 | Hibrit Tavsiye Sistemi Projesi | `07. Hybrid Recommender Project.ipynb` |
| 08 | A/B Testi — Bidding Dönüşüm Karşılaştırması | `08.AB_TESTING.ipynb` |
| 09 | Birliktelik Kuralı Tabanlı Tavsiye Sistemi | `09. ARL Recommender System.ipynb` |

**Projeler:** Armut hizmet verisi üzerinde birliktelik kuralı ile hizmet önerisi, user-based ve item-based yöntemleri birleştiren hibrit film öneri sistemi, Facebook bidding stratejilerinin A/B testi ile karşılaştırılması, Online Retail II verisi üzerinde sepet bazlı ürün önerisi.

**Veri setleri:** `armut_data.csv`, `movie.csv`, `rating.csv`, `ab_testing.xlsx`, `online_retail_II.xlsx`, `the_movies_dataset/`

> **Not:** `rating.csv` (~690 MB), `movie_lens_dataset/` ve `the_movies_dataset/` altındaki büyük dosyalar `.gitignore` ile hariç tutulmuştur; ilgili notebook'ları çalıştırmak için veri setlerinin `datasets/` klasörüne yerleştirilmesi gerekir.

---

### Modül 4 — MS SQL Sorgulama

İlişkisel veritabanı kavramları, T-SQL sözdizimi, aggregate fonksiyonlar ve JOIN işlemlerine odaklanan uygulamalı modül.

| # | Konu | Dosya |
|---|------|-------|
| 01 | SQL Giriş | `01.SQL Giriş.ipynb` |
| 02 | Veri Tipleri | `02.Veri Tipleri.ipynb` |
| 03 | SQL Dili | `03.SQL Dili.ipynb` |
| 04 | Aggregate Functions | `04.Aggregate Functions.ipynb` |
| 05 | İlişkisel Veri Tabanı | `05.İlişkisel Veri Tabanı.ipynb` |

**Proje:** FLO müşteri verisi üzerinde 16 soruluk SQL analizi — veritabanı ve tablo oluşturma, müşteri/ciro metrikleri, kanal ve mağaza kırılımları, kategori analizi, en aktif müşteriler ve son alışveriş tarihi sorguları.

**Çıktı dosyası:** `flo.sql`

**Veri seti:** `flo_data_20K.csv` (~19.945 müşteri kaydı, 13 sütun)

> **Not:** `flo.sql` sorguları Microsoft SQL Server (T-SQL) ile çalıştırılmak üzere hazırlanmıştır. CSV verisini içe aktarmadan önce `Customers` veritabanı ve `FLO` tablosunun oluşturulması gerekir.

---

### Modül 5 — Özellik Mühendisliği (Feature Engineering)

Veri ön işleme ve özellik mühendisliği teknikleriyle model performansını artırmaya odaklanan uygulamalı modül. Aykırı/eksik değer işlemleri, encoding, ölçeklendirme ve özellik çıkarımından uçtan uca proje uygulamalarına kadar kapsamlı içerik.

| # | Konu | Dosya |
|---|------|-------|
| 01 | Feature Engineering & Veri Ön İşleme | `01. Feature Engineering.ipynb` |
| 02 | Diabetes Feature Engineering Projesi | `02. Diabetes Feature Engineering.ipynb` |

**Kapsanan konular (01):** Aykırı değer analizi (IQR, LOF), eksik değer yakalama ve atama, Label / One-Hot / Rare Encoding, Feature Scaling, Feature Extraction, Titanic veri seti üzerinde uçtan uca feature engineering & modelleme.

**Proje (02):** Diabetes veri seti üzerinde keşifçi veri analizi, eksik/aykırı değer işlemleri, yeni değişken üretimi, encoding, standartlaştırma ve Random Forest ile diyabet tahmini.

**Veri setleri:** `titanic.csv`, `diabetes.csv`, `course_reviews.csv`  
> `application_train.csv` (~158 MB) GitHub dosya boyutu limiti nedeniyle repoya eklenmemiştir; lokal `datasets/` klasöründe tutulabilir.

---

### Modül 6 — Makine Öğrenmesi

Doğrusal/lojistik regresyon ve KNN temellerinden hata metriklerine; Telco churn projesinden CART, gelişmiş ağaç yöntemleri ve Kaggle House Prices tahminine kadar uzanan kapsamlı bir makine öğrenmesi modülü.

| # | Konu | Dosya |
|---|------|-------|
| 01 | Makine Öğrenmesine Giriş & Temel Kavramlar | `01.Temel Kavramlar.ipynb` |
| 02 | Doğrusal Regresyon | `02.Doğrusal Regresyon.ipynb` |
| 03 | Lojistik Regresyon | `03.Lojistik Regresyon.ipynb` |
| 04 | K-En Yakın Komşu (KNN) Yöntemi | `04.K-En Yakın Komşu Yöntemi.ipynb` |
| 05 | Regresyon Modelleri için Hata Değerlendirme | `05.Regresyon Modelleri için Hata Değerlendirme.ipynb` |
| 06 | Sınıflandırma Modeli Değerlendirme | `06.Sınıflandırma Modeli Değerlendirme.ipynb` |
| 07 | Telco Customer Churn Prediction Projesi | `07.Telco Customer Churn Prediction.ipynb` |
| 08 | CART (Classification and Regression Trees) | `08.CART.ipynb` |
| 09 | Gelişmiş Ağaç Yöntemleri (RF, GBM, XGBoost, LightGBM, CatBoost) | `09.Gelişmiş Ağaça Yöntemleri.ipynb` |
| 10 | Ev Fiyat Tahmin Modeli (House Prices) | `10.House Price Prediction.ipynb` |

**Kapsanan konular:** Değişken türleri ve öğrenme türleri, doğrusal/lojistik regresyonun matematiksel temelleri (MSE/RMSE/MAE, olasılık & sigmoid), KNN ile sınıflandırma ve hiperparametre optimizasyonu (GridSearchCV), confusion matrix üzerinden accuracy/precision/recall/F1 hesaplama, karar ağaçları (CART), ensemble / boosting yöntemleri, regresyon için feature engineering ve log-RMSE.

**Proje (07):** Telco müşteri kaybı veri seti üzerinde uçtan uca churn tahmini — keşifçi veri analizi, eksik/aykırı değer işlemleri, özellik mühendisliği, encoding, ölçeklendirme; ardından 9 farklı sınıflandırma algoritmasının karşılaştırılması, en iyi modellerin GridSearchCV ile optimize edilmesi ve özellik önem düzeyinin görselleştirilmesi.

**Proje (10):** Kaggle [House Prices - Advanced Regression Techniques](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques) veri seti üzerinde uçtan uca ev fiyatı tahmini — train/test birleştirme, EDA (`check_df`, tip düzeltme, aykırı/eksik analiz), feature engineering (rare encoder, yeni değişkenler, encoding), çoklu regresyon modeli karşılaştırması, log dönüşümü, LightGBM hiperparametre optimizasyonu, feature importance ve Kaggle submission dosyası üretimi.

**Veri setleri:** `advertising.csv`, `USArrests.csv`, `breast_cancer.csv`, `titanic.csv`, `hitters.csv`, `diabetes.csv`, `churn.csv`, `Telco-Customer-Churn.csv`, `house_prices/train.csv`, `house_prices/test.csv`

> **Not:** Eğitilmiş model dosyaları (`*.pkl`), `catboost_info/` logları ve Kaggle submission CSV çıktıları `.gitignore` ile hariç tutulmuştur.

---

## Kullanılan Teknolojiler

- **Python 3.9+**
- **Jupyter Notebook**
- **NumPy** — sayısal hesaplama
- **Pandas** — veri manipülasyonu ve analizi
- **Matplotlib / Seaborn** — veri görselleştirme
- **Scikit-learn** — makine öğrenmesi, özellik ölçeklendirme, encoding, aykırı değer analizi (LOF) ve hiperparametre optimizasyonu (GridSearchCV)
- **XGBoost / LightGBM / CatBoost** — gradyan artırımlı (gradient boosting) ağaç modelleri
- **Lifetimes** — CLTV modelleme (BG/NBD, Gamma-Gamma)
- **mlxtend** — birliktelik kuralı öğrenimi (Apriori)
- **SciPy / statsmodels** — hipotez testleri ve istatistiksel analiz
- **Microsoft SQL Server (T-SQL)** — ilişkisel veritabanı sorgulama ve analiz

---

## Kurulum ve Çalıştırma

```bash
# Depoyu klonla
git clone https://github.com/berkcangumusisik/DataScienceBootcamp21.Grup.git
cd DataScienceBootcamp21.Grup

# Sanal ortam oluştur (önerilir)
python -m venv venv
source venv/bin/activate        # macOS / Linux
# venv\Scripts\activate         # Windows

# Bağımlılıkları yükle
pip install jupyter pandas numpy matplotlib seaborn scikit-learn lifetimes openpyxl mlxtend scipy statsmodels xgboost lightgbm catboost

# Jupyter Notebook'u başlat
jupyter notebook
```

> **Not:** Her notebook kendi modül klasöründen çalıştırılmalıdır; böylece `datasets/` altındaki dosyalara göreli yollar doğru çözülür.

> **macOS kullanıcıları için:** `xgboost` ve `lightgbm` kütüphaneleri OpenMP çalışma zamanına ihtiyaç duyar. Import sırasında `libomp.dylib` hatası alırsanız `brew install libomp` komutuyla kurulumu tamamlayabilirsiniz.

> **Büyük veri setleri:** MovieLens / The Movies Dataset rating dosyaları, `application_train.csv` ve bazı Excel çıktıları GitHub boyutu nedeniyle `.gitignore` altındadır. İlgili notebook'ları çalıştırmadan önce veri setlerini ilgili `datasets/` klasörüne yerleştirmeniz gerekir.

**MS SQL projesi için:** `04.Querying MS SQL/flo.sql` dosyasını çalıştırmak için [Microsoft SQL Server](https://www.microsoft.com/sql-server) veya [Azure Data Studio](https://learn.microsoft.com/sql/azure-data-studio/) gibi bir T-SQL ortamı gereklidir. `flo_data_20K.csv` dosyası `FLO` tablosuna içe aktarıldıktan sonra sorgular çalıştırılabilir.

---

## Bootcamp Programı (Tam Müfredat)

Bu depo şu an altı modülü kapsamaktadır (Python, CRM Analitiği, Tavsiye Sistemleri, MS SQL Sorgulama, Özellik Mühendisliği ve Makine Öğrenmesi). Bootcamp'in tamamı aşağıdaki modüllerden oluşur:

| # | Modül |
|---|-------|
| 1 | Veri Bilimi için Python Programlama |
| 2 | CRM Analitiği |
| 3 | Ölçümleme Problemleri |
| 4 | Tavsiye Sistemleri |
| 5 | Özellik Mühendisliği |
| 6 | Makine Öğrenmesi |
| 7 | MS SQL Sorgulama |
| 8 | İş Başvurularında Öne Çıkma Rehberi |
| 9 | GenAI: Üretken Yapay Zeka |
| 10 | AI Agent ile Otomasyon |

Program detayları için: [miuul.com/bootcamps/data-scientist-bootcamp](https://miuul.com/bootcamps/data-scientist-bootcamp)

---

## Lisans

Bu depodaki içerikler eğitim amaçlıdır. Miuul bootcamp materyalleri ve veri setleri yalnızca öğrenme kapsamında kullanılmalıdır.

---

<p align="center">
  <sub>
    <a href="https://miuul.com/bootcamps/data-scientist-bootcamp">Miuul AI Data Scientist Bootcamp</a>
    · 21. Dönem Grup Çalışmaları
  </sub>
</p>
