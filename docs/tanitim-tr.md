# Penalty Shootout – Çarpma & Bölme Antrenmanı

Her gün 90 dakikalık bir maç. Her penaltı bir işlem. Doğru köşeyi bul, gol at; yanlış köşeye vur, kaleci kurtarsın. Yiğit Ali'nin çarpma ve bölmeyi ezber yerine refleksle öğrenmesi için tasarlandı: ekranda soru var, kalenin köşelerinde beş sayı var, düşünmeye 90 dakika (aslında 90 saniye) var.

## Oyun nasıl oynanır

1. Formanı seç ve **Kick off**'a bas. Düdük çalar, seyirci uğuldamaya başlar.
2. Ekranda bir işlem çıkar (örn. 7 × 8). Kalenin sol üst, üst, sağ üst, sol alt ve sağ alt köşesinde beş sayı vardır; biri doğrudur. Kaleci ortada bekler.
3. Doğru köşeye dokun → top oraya uçar, ağ sallanır, kıvılcımlar dağılır, seyirci coşar: **GOAL!** 3 saniyeden hızlıysan **TOP BINS!**
4. Yanlış köşeye dokun → kaleci oraya uçar, eldiveni büyür, topu yakalar: **SAVED!** Doğru sayı altın rengiyle parlar, skorbordda cevap yazar.
5. Seviyenin penaltıları bitince artan süre bir sonraki seviyeye eklenir. Saat sıfırlanırsa maç orada biter.
6. Yedinci seviyeyi de bitirince **Full time**: puan, seviye, haftalık tablo ve save dosyası.

## Seviyeler

| Seviye | Ad | Konu | Penaltı |
|---|---|---|---|
| 1 | Academy | × 2, 5, 10 | 12 |
| 2 | Castilla | × 3, 4 (+ 2, 5, 10) | 12 |
| 3 | Squad | × 6, 7, 8, 9 | 12 |
| 4 | First XI | ÷ 2, 3, 4, 5, 10 | 10 |
| 5 | Starter | ÷ 6, 7, 8, 9, 11, 12 | 10 |
| 6 | Captain | × ve ÷ karışık, 12'ye kadar | 8 |
| 7 | Galáctico | 13–25 × tek basamak, iki basamaklı ÷ tek basamak | 6 |

Toplam 70 penaltı. Her seviye 90 dakikayla başlar; kolay seviyelerde hızlı olan, zor seviyelere bol süreyle girer.

## Puanlama

- Her gol **3 puan**.
- Son penaltı atıldığında saatte kalan her dakika **1 puan** (süre bitmeden 7 seviyeyi tamamlayan alır).
- Bir günde birden fazla maç oynanırsa o günün en yüksek puanı tabloya yazılır.
- 7 seviye + 120'den fazla dakika artmışsa **Ballon d'Or**.

## Öne çıkan özellikler

**Penaltı kalesi.** Beş köşe, beş sayı. Şaşırtıcı sayılar rastgele değil: 7 × 8 için 48, 54, 63, 57 gibi gerçekten karıştırılan cevaplar.

**Süre devri.** 90 dakika seviyeye özel değil, maç boyunca akan bir bütçe. Hız kazandırır çünkü kazanılan her dakika doğrudan puana döner.

**Extra Training.** Kalecinin kurtardığı her soru listeye girer ve JSON dosyasında saklanır. Ertesi gün ana ekranda "Extra training – 9 saved penalties" butonu belirir. Süre yok, puan yok; soru ancak **iki kez** gol olunca listeden çıkar, arada kaçırılırsa sayaç sıfırlanır.

**Haftalık tablo.** Pazartesi–Pazar: gol, ulaşılan seviye, artan dakika, puan ve hafta toplamı. Ana ekranda ve maç sonunda.

**Save / Load.** Üst banttaki ikonlarla JSON dosyası indirilir veya yüklenir. Dosya, formayı, haftalık sonuçları ve Extra Training listesini taşır. Yükleme birleştirir: her gün için yüksek puan korunur, eski dosya yeni skoru ezmez.

**Formalar.** Coventry kaleci (1), Beşiktaş (10), Real Madrid (15), Al Nassr (7). Hepsinin sırtında YİĞİT ALİ yazar; seçim hatırlanır.

**Ses.** Düdük, seyirci uğultusu, top vuruşu, gol tezahüratı, kurtarışta "ooh", seviye atlama melodisi, bitişte üç düdük. Tarayıcı içinde üretilir, internet gerekmez, hoparlör ikonuyla kapatılır.

**Skorbord.** Stadyum tabelası: YIGIT ALI 41 – 5 KEEPER canlı skor, gol/kurtarış mesajı, işlem ve süre, seri sayacı.

**Coach raporu.** Maç sonunda tek tuşla kopyalanan metin: her atış, hangi seviye, doğru mu, kaç saniyede.

## Günlük rutin

Kick off → 70 penaltı → Full time → save dosyasını Coach'a gönder → listedekileri Extra Training'de tekrar vur. Beş dakikadan az, her gün.
