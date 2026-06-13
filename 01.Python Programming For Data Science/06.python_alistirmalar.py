###############################################
# Python Alıştırmalar
###############################################

###############################################
# GÖREV 1: Veri yapılarının tipleriniz inceleyiniz.
###############################################

x = 8
print(type(x))  # int

y = 3.2
print(type(y))  # float

z = 8j + 18
print(type(z))  # complex

a = "Hello World"
print(type(a))  # str

b = True
print(type(b))  # bool

c = 23 < 22
print(type(c))  # bool

l = [1, 2, 3, 4,"String",3.2, False]
print(type(l))  # list

d = {"Name": "Jake",
     "Age": [27,56],
     "Adress": "Downtown"}
print(type(d))  # dict

t = ("Machine Learning", "Data Science")
print(type(t))  # tuple

s = {"Python", "Machine Learning", "Data Science","Python"}
print(type(s))  # set



###############################################
# GÖREV 2: Verilen string ifadenin tüm harflerini büyük harfe çeviriniz. Virgül ve nokta yerine space koyunuz, kelime kelime ayırınız.
###############################################

text = "The goal is to turn data into information, and information into insight."

# Cevap:
text_upper = text.upper()
text_no_punct = text_upper.replace(',', ' ').replace('.', ' ')
words = text_no_punct.split()
print(words)



###############################################
# GÖREV 3: Verilen liste için aşağıdaki görevleri yapınız.
###############################################

lst = ["D","A","T","A","S","C","I","E","N","C","E"]

# Adım 1: Verilen listenin eleman sayısına bakın.
print(len(lst))

# Adım 2: Sıfırıncı ve onuncu index'teki elemanları çağırın.
print(lst[0], lst[10])

# Adım 3: Verilen liste üzerinden ["D","A","T","A"] listesi oluşturun.
print(lst[0:4])

# Adım 4: Sekizinci index'teki elemanı silin.
lst.pop(8)
print(lst)

# Adım 5: Yeni bir eleman ekleyin.
lst.append("Y")
print(lst)

# Adım 6: Sekizinci index'e  "N" elemanını tekrar ekleyin.
lst.insert(8, "N")
print(lst)



###############################################
# GÖREV 4: Verilen sözlük yapısına aşağıdaki adımları uygulayınız.
###############################################

dict = {'Christian': ["America",18],
        'Daisy':["England",12],
        'Antonio':["Spain",22],
        'Dante':["Italy",25]}

# Adım 1: Key değerlerine erişiniz.
print(dict.keys())

# Adım 2: Value'lara erişiniz.
print(dict.values())

# Adım 3: Daisy key'ine ait 12 değerini 13 olarak güncelleyiniz.
dict['Daisy'][1] = 13
print(dict)

# Adım 4: Key değeri Ahmet value değeri [Turkey,24] olan yeni bir değer ekleyiniz.
dict['Ahmet'] = ["Turkey", 24]
print(dict)

# Adım 5: Antonio'yu dictionary'den siliniz.
dict.pop('Antonio')
print(dict)





###############################################
# GÖREV 5: Arguman olarak bir liste alan, listenin içerisindeki tek ve çift sayıları ayrı listelere atıyan ve bu listeleri return eden fonskiyon yazınız.
###############################################

l = [2,13,18,93,22]

# Cevap:
def func(liste):
    cift = []
    tek = []
    for i in liste:
        if i % 2 == 0:
            cift.append(i)
        else:
            tek.append(i)
    return cift, tek

print(func(l))



###############################################
# GÖREV 6: Aşağıda verilen listede mühendislik ve tıp fakülterinde dereceye giren öğrencilerin isimleri bulunmaktadır.
# Sırasıyla ilk üç öğrenci mühendislik fakültesinin başarı sırasını temsil ederken son üç öğrenci de tıp fakültesi öğrenci sırasına aittir.
# Enumarate kullanarak öğrenci derecelerini fakülte özelinde yazdırınız.
###############################################

ogrenciler = ["Ali","Veli","Ayşe","Talat","Zeynep","Ece"]

# Cevap:
print("Mühendislik Fakültesi:")
for i, ogr in enumerate(ogrenciler[:3], 1):
    print(f"{i}. {ogr}")
print("Tıp Fakültesi:")
for i, ogr in enumerate(ogrenciler[3:], 1):
    print(f"{i}. {ogr}")



###############################################
# GÖREV 7: Aşağıda 3 adet liste verilmiştir. Listelerde sırası ile bir dersin kodu, kredisi ve kontenjan bilgileri yer almaktadır. Zip kullanarak ders bilgilerini bastırınız.
###############################################

ders_kodu = ["CMP1005","PSY1001","HUK1005","SEN2204"]
kredi = [3,4,2,4]
kontenjan = [30,75,150,25]

# Cevap:
for kod, krd, kont in zip(ders_kodu, kredi, kontenjan):
    print(f"Kod: {kod}, Kredi: {krd}, Kontenjan: {kont}")



###############################################
# GÖREV 8: Aşağıda 2 adet set verilmiştir.
# Sizden istenilen eğer 1. küme 2. kümeyi kapsiyor ise ortak elemanlarını eğer kapsamıyor ise 2. kümenin 1. kümeden farkını yazdıracak fonksiyonu tanımlamanız beklenmektedir.
###############################################

kume1 = set(["data", "python"])
kume2 = set(["data", "function", "qcut", "lambda", "python", "miuul"])

# Cevap:
def kume_kontrol(kume1, kume2):
    if kume1.issuperset(kume2):
        print(kume1.intersection(kume2))
    else:
        print(kume2.difference(kume1))

kume_kontrol(kume1, kume2)
