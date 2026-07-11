-- =============================================================================
-- SORU 1: Customers isimli bir veritabanı ve verilen veri setindeki değişkenleri içerecek FLO isimli bir tablo oluşturunuz.
-- =============================================================================
-- Açıklama:
--   - Customers adında bir veritabanı oluşturulur.
--   - CSV'deki 13 sütunun tamamını içeren FLO tablosu tanımlanır.
--   - Tarih alanları DATE, sayısal alanlar FLOAT, metin alanları VARCHAR olarak seçilir.
--   - CSV dosyasını içe aktarmadan önce tablo yapısı hazır olmalıdır.

CREATE DATABASE Customers;
GO

USE Customers;
GO

CREATE TABLE FLO (
    master_id                           VARCHAR(50),
    order_channel                       VARCHAR(50),
    last_order_channel                  VARCHAR(50),
    first_order_date                    DATE,
    last_order_date                     DATE,
    last_order_date_online              DATE,
    last_order_date_offline             DATE,
    order_num_total_ever_online         FLOAT,
    order_num_total_ever_offline        FLOAT,
    customer_value_total_ever_offline   FLOAT,
    customer_value_total_ever_online    FLOAT,
    interested_in_categories_12         VARCHAR(500),
    store_type                          VARCHAR(50)
);
GO

-- =============================================================================
-- SORU 2: Kaç farklı müşteri alışveriş yapmış?
-- =============================================================================
-- Açıklama:
--   Her satır zaten bir müşteriyi temsil eder; master_id eşsiz müşteri kimliğidir.
--   COUNT(DISTINCT master_id) ile benzersiz müşteri sayısı bulunur.
--   Beklenen sonuç: 19.945

SELECT COUNT(DISTINCT master_id) AS farkli_musteri_sayisi
FROM FLO;


-- =============================================================================
-- SORU 3: Toplam alışveriş sayısı ve toplam ciro
-- =============================================================================
-- Açıklama:
--   Toplam sipariş = online sipariş + offline sipariş
--   Toplam ciro    = online harcama + offline harcama
--   Her müşteri için bu iki kanalın değerleri toplanır.

SELECT
    SUM(order_num_total_ever_online + order_num_total_ever_offline) AS toplam_alisveris_sayisi,
    SUM(customer_value_total_ever_online + customer_value_total_ever_offline) AS toplam_ciro
FROM FLO;

-- Beklenen: toplam_alisveris_sayisi = 100.219 | toplam_ciro ≈ 14.983.567,31


-- =============================================================================
-- SORU 4: Alışveriş başına ortalama ciro
-- =============================================================================
-- Açıklama:
--   Formül: Toplam Ciro / Toplam Alışveriş Sayısı
--   Tüm müşterilerin cirosu, tüm sipariş sayısına bölünür.

SELECT
    SUM(customer_value_total_ever_online + customer_value_total_ever_offline)
        / SUM(order_num_total_ever_online + order_num_total_ever_offline) AS alisveris_basina_ortalama_ciro
FROM FLO;

-- Beklenen: ≈ 149,51


-- =============================================================================
-- SORU 5: last_order_channel kırılımında toplam ciro ve alışveriş sayısı
-- =============================================================================
-- Açıklama:
--   Müşterinin en son alışveriş yaptığı kanala göre gruplama yapılır.
--   Her kanal için sipariş adedi ve ciro toplanır.

SELECT
    last_order_channel,
    SUM(order_num_total_ever_online + order_num_total_ever_offline) AS toplam_alisveris_sayisi,
    SUM(customer_value_total_ever_online + customer_value_total_ever_offline) AS toplam_ciro
FROM FLO
GROUP BY last_order_channel
ORDER BY toplam_ciro DESC;


-- =============================================================================
-- SORU 6: store_type kırılımında toplam ciro
-- =============================================================================
-- Açıklama:
--   store_type değerleri "A", "A,B", "A,B,C" gibi birleşik gelebilir.
--   STRING_SPLIT ile her şirket (A, B, C) ayrı satıra açılır.
--   Bir müşteri birden fazla şirkette alışveriş yaptıysa cirosu her şirkete yazılır.

WITH store_split AS (
    SELECT
        LTRIM(RTRIM(value)) AS store,
        customer_value_total_ever_online + customer_value_total_ever_offline AS ciro
    FROM FLO
    CROSS APPLY STRING_SPLIT(REPLACE(store_type, '"', ''), ',')
)
SELECT
    store AS store_type,
    SUM(ciro) AS toplam_ciro
FROM store_split
WHERE store <> ''
GROUP BY store
ORDER BY toplam_ciro DESC;

-- Beklenen: A ≈ 14.983.567 | B ≈ 4.014.999 | C ≈ 220.625


-- =============================================================================
-- SORU 7: İlk alışveriş yılına göre alışveriş sayıları
-- =============================================================================
-- Açıklama:
--   YEAR(first_order_date) ile müşterinin ilk alışveriş yılı alınır.
--   O yılda ilk kez alışverişe başlayan müşterilerin tüm siparişleri toplanır.

SELECT
    YEAR(first_order_date) AS yil,
    SUM(order_num_total_ever_online + order_num_total_ever_offline) AS alisveris_sayisi
FROM FLO
GROUP BY YEAR(first_order_date)
ORDER BY yil;


-- =============================================================================
-- SORU 8: last_order_channel kırılımında alışveriş başına ortalama ciro
-- =============================================================================
-- Açıklama:
--   Her kanal için: kanal cirosu / kanal sipariş sayısı

SELECT
    last_order_channel,
    SUM(customer_value_total_ever_online + customer_value_total_ever_offline)
        / SUM(order_num_total_ever_online + order_num_total_ever_offline) AS alisveris_basina_ortalama_ciro
FROM FLO
GROUP BY last_order_channel
ORDER BY alisveris_basina_ortalama_ciro DESC;


-- =============================================================================
-- SORU 9: Son 12 ayda en çok ilgi gören kategori
-- =============================================================================
-- Açıklama:
--   interested_in_categories_12 alanı "[KADIN]" veya "[ERKEK, COCUK, KADIN]" formatındadır.
--   Köşeli parantezler temizlenir, virgülle ayrılan kategoriler STRING_SPLIT ile açılır.
--   Her kategori için kaç müşterinin ilgilendiği sayılır (en yüksek = en popüler).

WITH category_split AS (
    SELECT
        LTRIM(RTRIM(value)) AS kategori
    FROM FLO
    CROSS APPLY STRING_SPLIT(
        REPLACE(REPLACE(interested_in_categories_12, '[', ''), ']', ''),
        ','
    )
)
SELECT TOP 1
    kategori,
    COUNT(*) AS musteri_sayisi
FROM category_split
WHERE kategori <> ''
GROUP BY kategori
ORDER BY musteri_sayisi DESC;

-- Beklenen: AKTIFSPOR (9.204 müşteri)


-- =============================================================================
-- SORU 10: En çok tercih edilen store_type
-- =============================================================================
-- Açıklama:
--   İki yaklaşım vardır:
--   A) Ham store_type değerine göre (A, A,B, A,C ...) → En sık: "A" (15.453 müşteri)
--   B) Şirket bazında ayrıştırılmış → Yine "A" (19.945 kez geçer)

-- Yaklaşım A (ham değer):
SELECT TOP 1
    store_type,
    COUNT(*) AS musteri_sayisi
FROM FLO
GROUP BY store_type
ORDER BY musteri_sayisi DESC;

-- Yaklaşım B (şirket bazında ayrıştırma):
WITH store_split AS (
    SELECT LTRIM(RTRIM(value)) AS store
    FROM FLO
    CROSS APPLY STRING_SPLIT(REPLACE(store_type, '"', ''), ',')
)
SELECT TOP 1
    store AS store_type,
    COUNT(*) AS gecis_sayisi
FROM store_split
WHERE store <> ''
GROUP BY store
ORDER BY gecis_sayisi DESC;


-- =============================================================================
-- SORU 11: last_order_channel bazında en popüler kategori ve o kategorideki alışveriş hacmi
-- =============================================================================
-- Açıklama:
--   1) Her kanal-kategori çifti için ilgilenen müşteri sayısı hesaplanır.
--   2) Her kanalda en yüksek müşteri sayısına sahip kategori seçilir (ROW_NUMBER).
--   3) O kategorideki müşterilerin toplam cirosu ve sipariş sayısı getirilir.

WITH category_split AS (
    SELECT
        last_order_channel,
        master_id,
        customer_value_total_ever_online + customer_value_total_ever_offline AS ciro,
        order_num_total_ever_online + order_num_total_ever_offline AS siparis_sayisi,
        LTRIM(RTRIM(value)) AS kategori
    FROM FLO
    CROSS APPLY STRING_SPLIT(
        REPLACE(REPLACE(interested_in_categories_12, '[', ''), ']', ''),
        ','
    )
    WHERE LTRIM(RTRIM(value)) <> ''
),
channel_category AS (
    SELECT
        last_order_channel,
        kategori,
        COUNT(DISTINCT master_id) AS musteri_sayisi,
        SUM(ciro) AS toplam_ciro,
        SUM(siparis_sayisi) AS toplam_siparis
    FROM category_split
    GROUP BY last_order_channel, kategori
),
ranked AS (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY last_order_channel
            ORDER BY musteri_sayisi DESC, kategori
        ) AS rn
    FROM channel_category
)
SELECT
    last_order_channel,
    kategori AS en_cok_ilgi_goren_kategori,
    musteri_sayisi,
    toplam_ciro,
    toplam_siparis
FROM ranked
WHERE rn = 1
ORDER BY last_order_channel;


-- =============================================================================
-- SORU 12: En çok alışveriş yapan müşterinin ID'si
-- =============================================================================
-- Açıklama:
--   Toplam sipariş sayısına göre sıralama yapılır.
--   Online + offline sipariş toplamı en yüksek olan müşteri seçilir.

SELECT TOP 1
    master_id,
    order_num_total_ever_online + order_num_total_ever_offline AS toplam_alisveris_sayisi
FROM FLO
ORDER BY toplam_alisveris_sayisi DESC;

-- Beklenen: 5d1c466a-9cfd-11e9-9897-000d3a38a36f (202 sipariş)


-- =============================================================================
-- SORU 13: En çok alışveriş yapan kişinin ortalama ciro ve alışveriş sıklığı
-- =============================================================================
-- Açıklama:
--   Alışveriş başına ortalama ciro = toplam ciro / toplam sipariş
--   Alışveriş sıklığı (gün ortalaması):
--     (son alışveriş tarihi - ilk alışveriş tarihi) / (toplam sipariş - 1)
--   Formül, siparişler arasındaki ortalama gün sayısını verir.
--   Tek siparişli müşteride payda 0 olacağı için NULLIF kullanılır.

SELECT TOP 1
    master_id,
    (customer_value_total_ever_online + customer_value_total_ever_offline)
        / (order_num_total_ever_online + order_num_total_ever_offline) AS alisveris_basina_ortalama_ciro,
    CAST(DATEDIFF(DAY, first_order_date, last_order_date) AS FLOAT)
        / NULLIF((order_num_total_ever_online + order_num_total_ever_offline) - 1, 0) AS alisveris_gun_ortalamasi
FROM FLO
ORDER BY (order_num_total_ever_online + order_num_total_ever_offline) DESC;

-- Beklenen: ortalama ciro ≈ 227,25 | sıklık ≈ 13,72 gün


-- =============================================================================
-- SORU 14: Ciroya göre ilk 100 müşterinin ortalama alışveriş sıklığı
-- =============================================================================
-- Açıklama:
--   Önce her müşteri için alışveriş sıklığı hesaplanır.
--   Ciroya göre ilk 100 müşteri seçilir (TOP 100 ... ORDER BY ciro DESC).
--   Bu 100 kişinin sıklık değerlerinin ortalaması alınır.

WITH customer_metrics AS (
    SELECT
        master_id,
        customer_value_total_ever_online + customer_value_total_ever_offline AS toplam_ciro,
        CAST(DATEDIFF(DAY, first_order_date, last_order_date) AS FLOAT)
            / NULLIF((order_num_total_ever_online + order_num_total_ever_offline) - 1, 0) AS alisveris_gun_ortalamasi
    FROM FLO
),
top_100 AS (
    SELECT TOP 100
        alisveris_gun_ortalamasi
    FROM customer_metrics
    ORDER BY toplam_ciro DESC
)
SELECT
    AVG(alisveris_gun_ortalamasi) AS ilk_100_ortalama_alisveris_sikligi
FROM top_100;

-- Beklenen: ≈ 44,30 gün


-- =============================================================================
-- SORU 15: last_order_channel kırılımında en çok alışveriş yapan müşteri
-- =============================================================================
-- Açıklama:
--   Her kanal için müşteriler sipariş sayısına göre sıralanır.
--   ROW_NUMBER ile kanal başına 1. müşteri seçilir.

WITH ranked_customers AS (
    SELECT
        last_order_channel,
        master_id,
        order_num_total_ever_online + order_num_total_ever_offline AS toplam_alisveris,
        ROW_NUMBER() OVER (
            PARTITION BY last_order_channel
            ORDER BY (order_num_total_ever_online + order_num_total_ever_offline) DESC
        ) AS rn
    FROM FLO
)
SELECT
    last_order_channel,
    master_id,
    toplam_alisveris
FROM ranked_customers
WHERE rn = 1
ORDER BY last_order_channel;


-- =============================================================================
-- SORU 16: En son alışveriş yapan müşteri(ler)in ID'si
-- =============================================================================
-- Açıklama:
--   last_order_date maksimum olan tüm müşteriler getirilir.
--   Aynı tarihte birden fazla müşteri olabilir; hepsi listelenir.

SELECT master_id, last_order_date
FROM FLO
WHERE last_order_date = (SELECT MAX(last_order_date) FROM FLO);

-- Beklenen: last_order_date = 2021-05-30, 80 müşteri
