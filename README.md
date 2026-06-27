# Miuul AI Data Scientist Bootcamp — 21. Dönem Grup Çalışmaları

[![Miuul](https://img.shields.io/badge/Miuul-AI%20Data%20Scientist%20Bootcamp-6C63FF?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJ3aGl0ZSI+PHBhdGggZD0iTTEyIDJMMTMuMDkgOC4yNkwyMCA5TDEzLjA5IDE1Ljc0TDEyIDIyTDEwLjkxIDE1Ljc0TDQgOUwxMC45MSA4LjI2TDEyIDJaIi8+PC9zdmc+)](https://miuul.com/bootcamps/data-scientist-bootcamp)
[![Python](https://img.shields.io/badge/Python-3.9%2B-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white)](https://jupyter.org/)
[![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org/)
[![NumPy](https://img.shields.io/badge/NumPy-013243?style=for-the-badge&logo=numpy&logoColor=white)](https://numpy.org/)

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
└── 02.CRM Analytics/                         # Modül 2
    ├── datasets/
    └── *.ipynb, *.csv
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

## Kullanılan Teknolojiler

- **Python 3.9+**
- **Jupyter Notebook**
- **NumPy** — sayısal hesaplama
- **Pandas** — veri manipülasyonu ve analizi
- **Matplotlib / Seaborn** — veri görselleştirme
- **Scikit-learn** — makine öğrenmesi (kural tabanlı sınıflandırma)
- **Lifetimes** — CLTV modelleme (BG/NBD, Gamma-Gamma)

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
pip install jupyter pandas numpy matplotlib seaborn scikit-learn lifetimes openpyxl

# Jupyter Notebook'u başlat
jupyter notebook
```

> **Not:** Her notebook kendi modül klasöründen çalıştırılmalıdır; böylece `datasets/` altındaki dosyalara göreli yollar doğru çözülür.

---

## Bootcamp Programı (Tam Müfredat)

Bu depo şu an ilk iki modülü kapsamaktadır. Bootcamp'in tamamı aşağıdaki modüllerden oluşur:

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
