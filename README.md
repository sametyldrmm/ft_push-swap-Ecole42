# ft_push-swap-Ecole42
## Genel proje
Push-Swap projesi, belirli koşullar ve zorunluluklar altında bir sıralama algoritması oluşturmayı amaçlayan bir programlama projesidir. 
Projede, A ve B adında iki yığın verilir ve bu yığınlar içindeki sayıları sıralamamız beklenir. Projede, toplam hamle adı verilen A ve B 
yığınlarında yapacağımız minimum değişiklik sayısını mümkün olduğunca azaltmamız gerekiyor. Yani, amacımız mümkün olduğunca az sayıda hamle 
ile sıralama işlemini gerçekleştirmektir.

Projede kullanacağımız kurallar önceden belirlenmiştir. Bunlar, sayıların taşınması, yığınlardan sayı çıkarılması, 
yığınların ters çevrilmesi ve yığınlardaki sayıların yerlerinin değiştirilmesi gibi temel işlemlerdir. Ancak, bu 
kurallar dışında arkaplanda istediğimiz herşeyi yapabilmekteyiz. Sadece vereceğimiz çıktılar bu kurallarla olmak zorundadır.
Ana sıralama işlemini bu kurallarla yaparız yani istediğimiz bilgileri toplamak için yığınlarda dolaşmakta özgürüz.


Projede, herhangi bir sıralama algoritmasını kullanmamız zorunlu değildir.Benim gibi kendi yöntemini entegre edenlerin sayısı
sadece 1 dir. Evde denemeniz önerilmez :). Tavsiyeler kısmında basit şekilde nasıl halledebilirsiniz anlataılıyor olacaktır.

### EN BASİT YÖNTEM (başarısızlıkla sonuçlanır)
  A yığınındaki tüm sayıları B yığınına taşırsınız. B yığınında en büyük sayıyıyı bulup A yığınına tekrar atarsınız.
  Hamle sayısı inanılmaz fazladır.

### BENİM YÖNTEMİM
Benim yöntemim, olasılık teorisi ve lineer regresyon modeli üzerine kurulmuştur. Bu yöntem, A yığınındaki sayıları parçalara ayırarak B yığınına taşıyıp,
daha sonra B yığınındaki en büyük sayıyı A yığınına geri taşımak şeklinde çalışır. Bu yöntem, kağıt üzerinde basit bir 
mantığa dayanır ve kolaylıkla anlaşılabilir. Ancak, sayıların gruplandırılması ve grupların sayısı gibi faktörlere bağlı 
olarak hamle sayısı değişebilir.

Var olabilecek en basit yöntem geliştirilmeye çalışılmıştır ve kısmende olsa başarılı olduğumu düşünüyorum.
500 sayıda 1 grup tüm sayılar yaptığınızda hamle sayısı 1 milyonun üzerine çıkabilmektedir. En optimum koşşullarda ise 5200 olabilmektedir. (Tam puan)

Bu nedenle, projede makine öğrenmesi tekniklerini kullanarak hamle sayısını minimize etmek mümkündür. Bunun için öncelikle 
test verileri elde ederek, farklı sayı grupları ve sayı adetleri için hamle sayılarını hesaplamalıyız. Daha sonra, bu verileri
 kullanarak bir fonksiyon oluşturabilir ve bu fonksiyonu kullanarak hamle sayısını tahmin edebiliriz.


Projemin sonucunda, sıralama algoritmasını kendi fikirlerim doğrultusunda oluşturdum ve bunu projeye uyarladım. 
Bu yöntem, önceden yapılmış sıralama algoritmalarını adapte etmek yerine, olasılık teorisine dayalı ve basit bir makine 
öğrenmesi tekniği olan lineer regresyon modelini kullanarak tasarlandı.

### TEMEL FİKİR
Temel fikir, A yığınındaki elemanları B yığınına atarak, B yığınındaki en büyük sayıyı bulup tekrar A yığınına geri 
atarak sıralama işlemini yapmaktı. Ancak, bu yöntem hamle sayısını çok yüksek tutuyordu. Bu nedenle, A yığınındaki 
elemanları parçalayarak B yığınına atmak ve geri atarken belirli bir aralıktaki elemanları seçmek gibi basit bir düzenleme 
yapıldı.

Bu yöntem, eldeki sayıların adetine göre farklı gruplara ayrılması ve gruplar arasında eleman sayısının değişmesiyle daha 
da optimize edildi. Elde edilen sonuçlar, test verileri üzerinde gerçekleştirilen deneylerle doğrulandı. Sonuç olarak, 
projem başarılı bir şekilde tamamlandı ve sıralama algoritmasının performansı, mümkün olan en az hamle sayısına indirgendi.

### TAVSİYELER
Ecole42 öğrencilerine birkaç tavsiyem var. Proje aslında basit bir proje olmasına rağmen, gereksiz yere zorlaştırmaya kalkarsanız senelerinizi bile alabilir. Kodlama bilginize göre tavsiyem değişebilir. Eğer çok deneyimli bir programcı değilseniz, kendi fikirlerinizi denemeniz için en az 2-3 haftanızı ayırmanızı öneririm.

Bu proje, kodlama ve algoritma oluşturma becerilerinizi geliştirmeniz açısından büyük bir fırsattır. Kod yazma alışkanlığınız artacak ve kendi fikirlerinizi farklı yollarla kodlayabileceğinizi göreceksiniz. Bir programlama dilinin öğrenilmesi gereken en önemli şeyin, verdiği hatalar olduğunu düşünüyorum. Ancak bu projede ana yapıyı oluşturduktan sonra, bu hataları almazsınız, çünkü yapı buna müsait değildir. Eğer bu hataları yaşamak istiyorsanız, aynı halkada bulunan ft-printf projesini bonuslu yapmanızı öneririm. Syntax hataları veya derleme hatalarını çözmeniz bir dakikadan fazla sürmeyecektir. Ayrıca, memory leak gibi konuları da orada çözebilirsiniz, bu projede ise öğrenemezsiniz.

Bu projedeki temel kazanım, tamamen algoritma oluşturma yeteneğinizi geliştirmektir. Eğer bu projeyi doğru bir şekilde yaparsanız, düşündüğünüz bir fikri koda dökmek çok daha kolay hale gelecektir. Ecole42'de başarılı olmak istiyorsanız, projeleri hakkıyla yapmalısınız. Aksi takdirde, size katması gerekenleri katmadan projeleri teslim ederseniz, ileriki projelerde sürekli başkalarına muhtaç bir şekilde yaşamak zorunda kalırsınız. Başarılar!

### YAPILABİLCEK EN BASİT ALGORTİMA (radix sort) (başarılı 84 puan)
  Radix sort algortiması bu algortima sayı sitemlerini baz alan ve vereceği hamle sayısı sabit olan akılda hiçbir soru işareti bırakmayan tertemiz bir     algoritmadır. Temel mantığı sayı sistemlerine dayanır.
  Radix sort, sıralama algoritmaları arasında en hızlılardan biridir ve genellikle büyük veri kümelerinde kullanılır. Temel olarak, her bir elemanın     rakamlarına bakarak sıralama işlemini gerçekleştirir.

Örneğin, 150, 250 ve 50 sayılarını sıralamak istediğimizi düşünelim. Radix sort, her bir sayıyı birer basamaklı rakamlara ayırır ve önce birler basamağına göre sıralama yapar. Yani, 150, 50 ve 250 sıralaması yapılır.
Şimdi, onlar basamağına göre sıralama yapalım. Bu sefer, 50, 150 ve 250 sıralaması yapılır.
Son olarak, yüzler basamağına göre sıralama yapalım. Bu durumda, yine 50, 150 ve 250 sıralaması yapılır.
Sonuç olarak, verilen sayılar 50, 150, 250 olarak sıralanır.
Bu örnek, radix sortun temel mantığını açıklar. Algoritma, elemanların basamaklarını sırasıyla inceleyerek sıralama işlemini gerçekleştirir. Bu nedenle, verilerin sayısal bir formatta olması gerektiği unutulmamalıdır. Ayrıca, elemanlar arasındaki farklılıkların çok büyük olması durumunda da radix sort daha hızlı çalışır.
Radix sort, diğer sıralama algoritmalarına kıyasla daha hızlıdır, ancak bellek kullanımı biraz daha yüksektir. Ayrıca, sayılarının büyük olduğu veri setlerinde daha etkili olur.

Bizim projemizde sadece 2 adet yığıt kullanacağımız için sayıları 2'lik sistemde, yani bitlerine göre ele alıyoruz. Bu işlem oldukça basit: Elimizde x adet sayı varsa, her sayının 8 adet bitine bakarak sıralama yapacağız. Eğer x. bitlere bakıyorsak ve bu bit 1 ise, o sayıyı B yığınına atacağız. Eğer bu bit 0 ise, sayıyı A yığında bırakacağız. Bu işlemi tüm sayılar için tekrarladıktan sonra, tüm sayıları A yığınına alarak bu işlemi tüm bitler için yapacağız. Sonuçta, sayılarımız sıralanmış olacaktır.

Projeyi githuba uzun süredir atmadığımdan README.md sayfası yeteri kadar düzenlenmemiştir . Daha sonra düzenlecenktir. 
