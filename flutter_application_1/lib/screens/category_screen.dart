import 'package:flutter/material.dart';
import 'package:flutter_application_1/class/tarif_class.dart';

import 'package:flutter_application_1/screens/tarif_screen.dart';

class CategoryScreen extends StatefulWidget {
  final String category;

  CategoryScreen(this.category);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Recipe> recipes = [];

  @override
  void initState() {
    super.initState();
    // Kategoriye özgü tarifleri yükleme
    loadRecipes();
  }

  void loadRecipes() {
    // Kategoriye özgü tarifleri veri kaynağından yükleme
    if (widget.category == 'Ana Yemekler') {
      recipes = [
        Recipe(
            title: 'Kuru Fasulye Malzemeleri ve Yapılışı',
            description:
                '1) 4 yemek kaşığı sıvı yağ ve 2 yemek kaşığı tereyağını derin bir tencereye aktarın ve kızdırın.1 adet yemeklik doğranmış kuru soğanı da ekleyin ve pembeleşinceye kadar kavurun.  2) Soğanlar kavrulduktan sonra 1 yemek kaşığı domates salçasını ekleyin ve kokusu çıkana kadar kavurun. 3) Son olarak bir gece önceden suda beklettiğiniz kuru fasulyeleri de tencereye ekleyin. 4) Sonra 1-2 dakika karıştırın ve 3 su bardağı su, 1 çay kaşığı kırmızı toz biber, 1 çay kaşığı tuz ve 1 çay kaşığı toz şekeri ekleyin, kapağını kapatıp fasulyeler yumuşayana kadar pişirin. 5) Tane tane pişmiş pirinç pilavı ile servis edin, afiyet olsun!',
            malzemeler:
                "4 yemek kaşığı sıvı yağ , 2 yemek kaşığı tereyağ , 1 adet ortaboy kuru soğan (yemeklik doğranmamış), 1 yemek kaşığı domates salçası , 500 gram kuru fasulye(1 gece önceden suda bekletilmiş), 3 su bardağı su , 1 çay kaşığı tuz , 1 çay kaşığı toz şeker , 1/2 çay kaşığı tatlı toz kırmızı biber"),
        Recipe(
          title: 'Et sote Malzemeleri ve Yapılışı',
          malzemeler:
              "5 yemek kaşığı sıvı yağ , 1 yemek kaşığı tereyağı, 1 adet soğan , 500g kuşbaşı et,2 adet domates, 4 adet sivri biber , Pulbiber , Karabiber ,  Kekik , Su(üzerini geçecek kadar), Tuz",
          description:
              '1)Tavaya sıvı yağ ve tereyağını alalım. 2) Tereyağı eridikten sonra doğranmış soğanı ekleyerek kavuralım. 3)Kuşbaşı doğranmış eti de ilave edelim. 4)Tencerenin kapağını kapatalım ve ara ara karıştırarak etler suyunu salıp çekinceye kadar pişirelim. 5)Doğranmış domates ve doğranmış sivribiberi ilave edelim. 6) Tencerenin kapağını kapatıp domatesler suyunu salıncaya kadar pişirmeye devam edelim. 7) Daha sonra pul biber, karabiber ve kekiği ekleyerek karıştıralım. 8)Etlerin üzerini geçecek şekilde sıcak suyu ilave edip karıştıralım ve tencerenin kapağını tekrar kapatalım. 9) Etimiz lokum gibi yumuşayıncaya kadar pişirelim. 10) Son olarak tuzunu ayarlayıp karıştıralım. 10) 5 dk daha pişirdikten sonra ocağı kapatalım. Et sote yemeğimiz servise hazır. Afiyet olsun :)',
        ),
      ];
    } else if (widget.category == 'Çorbalar') {
      recipes = [
        Recipe(
          title: "Mercimek Çorbası Malzemeleri ve Yapılışı",
          malzemeler:
              "2 su bardağı kırmızı mercimek, 1 adet soğan , 1 adet havuç , Yarım yemek kaşığı biber ya da domates salçası, 1 tatlı kaşığı tuz , Yarım çay kaşığı karabiber, 2 litre sıcak su , 5 yemek kaşığı sıvı yağ",
          description:
              '1)Kırmızı mercimek çorbası için sıvı yağı tencereye alınarak yemeklik doğranan soğanlar hafif pembeleşinceye kadar kavrulur. , 2) Daha sonra un ilave edilerek kısık ateşte kavurmaya devam edilir. 3) Salça kullanılacak ise salça ilave edilir, kavrulduktan sonra küp küp doğranmış havuç ve iyice yıkanıp suyu süzülen mercimekler ilave edilir. 4) Üzerine su eklenerek karıştırılır ve tencerenin kapağı kapatılır. Çorbamız kaynayana kadar orta ateşte, kaynadıktan sonra mercimekler ve havuçlar yumuşayana kadar ara ara karıştırılarak kısık ateşte pişirilir. 5) Çorba piştikten sonra el blenderı ile güzelce ezilir. Eğer blenderiniz yoksa süzgeçten de geçirebilirsiniz. 6)Karabiber, tuz ve isteğe bağlı olarak kimyon eklenir ve karıştırılır. 5 dakika daha pişirelerek ocaktan alınır. 7) Kıvamı koyu gelirse size, bir miktar su ilave edilerek bir taşım kaynatılır. 8)Bu arada küçük bir tavaya iki yemek kaşığı tereyağı alınır, kızdırılır ve bir tatlı kaşığı kırmızı toz biber eklenerek ocaktan alınır. 9)Mercimek çorbası servis kasesine alındıktan sonra üzerine kırmızı biberli sos gezdirilir ve bir dilim limon ile servis edilir. ',
        ),
        Recipe(
          title: "Tarhana Çorbası Malzemeleri ve Yapılışı",
          malzemeler:
              "3 yemek kaşığı ev tarhanası , 1 yemek kaşığı nane , 2 yemek kaşığı sıvı yağ , 1 yemek kaşığı salça , 6 su bardağı su , Kırmızı pul biber , Karabiber , Tuz ",
          description:
              "1)Tenceremizin içerisine sıvı yağ, nane, salça, baharatlar ve tarhanayı ekleyip biraz karıştırarak kavuruyoruz. Dilerseniz tereyağı da kullanabilirsiniz.( Veya tarhanayı suyu ekledikten sonra ekleyip çırpıcı ile karıştırabilirsiniz. böylelikle topaklanma ihtimali azalır.) 2)Suyu yavaş yavaş ilave ediyoruz ve devamlı karıştırarak pişiriyoruz. Topaklanmaması için tel çırpıcı ile karıştırabilirsiniz. (kaynayana kadar karıştırarak pişirelim.) 3)Kaynadıktan sonra 5 dk daha bekleyip ocaktan alıyoruz, çorbamızı… Afiyet olsun.",
        ),
      ];
    } else if (widget.category == 'Tatlılar') {
      recipes = [
        Recipe(
          title: 'Kemal Paşa Malzemeleri ve Yapılışı',
          malzemeler:
              "1 paket kemal paşa, 3 su bardağı su, 2,5 su bardağı şeker , 4 damla limon suyu , Üzeri için Hindistan cevizi ve Antep fıstığı tozu kullanılabilir.",
          description:
              '1)Hazır Kemalpaşa tatlısı şerbeti için su ve şekeri yayvan tencereye alıp şekerimizi karıştırarak eritiyoruz. 2) Kaynadıktan sonra içerisine limon suyu ekliyoruz ve 1-2 dakika daha karıştırıyoruz. 3) Şeker erir erimez Kemalpaşaları içine döküyoruz ve 5-10 dakika aralıklı alt üst edip dağılmadan karıştırıyoruz. 4) Orta ateşte şerbetini çekene kadar pişiriyoruz. 5) Şerbet tamamen çektiğinde altını kapatıp soğumaya bırakıyoruz. 6) Daha sonra istediğimiz gibi süsleyerek servis yapıyoruz. ',
        ),
        Recipe(
          title: 'Sufle Malzemeleri ve Yapılışı',
          malzemeler:
              "3 tane yumurta (yumurtalar büyükse 2 tane kullanabilirsiniz) , 80g bitter çikolata , Yarım su bardağı un,  50 g tereyağı, Yarım su bardağı şeker , 1 çimdik tuz ",
          description:
              '1)Çikolatalı sufle yapmaya başlamadan önce İlk olarak fırını 220 derecede çalıştırın. 2) Tereyağını teflon teflon tavada kısık ateşte erittikten sonra çikolatayı ekleyin ve  karıştırarak eritin. Eridikten sonra ocağı kapatarak unu ilave edin ve iyice karıştırın. 3) Ayrı bir kapta yumurta ve şekeri karışım beyazlayana kadar çırpın. Şeker tadının ön plana çıkması için tuzu ekleyip çırpın. 4) Çikolatalı harcı ilave ederek mikserle tekrar çırpın. Hamurumuz hazır. 5) Sufle kaplarınızı ya da ısıya dayanıklı küçük kaplarınız varsa içlerini yağlayarak hamurdan eşit şekilde hepsine paylaştırın. bu ölçülerle ben 3 kap sufle elde ettim ancak sizin kullandığınız kalıpların büyüklüğüne göre bu sayı değişecektir. 6) Daha önceden fansız çalıştırdığınız ve ısıttığınız  fırında 7-8 dakika da sufleniz hazır. ',
        ),
      ];
    } else if (widget.category == 'İçecekler') {
      recipes = [
        Recipe(
          title: 'Ev Yapımı Limonata Malzemeleri ve Yapılışı ',
          malzemeler:
              "10 adet limon , 2 su bardağı toz şeker, 5 su bardağı içme suyu 1/2 demet nanae , 2 su bardağı buz",
          description:
              '1)Bol suda yıkadığınız 10 adet limonun, kabuklarını rendenin kalın tarafıyla rendeleyin. Beyaz kısımlarını almamaya özen gösterin. 2) Kabuğu rendelenmiş dört adet limonu ortadan ikiye kesin ve suyunu sıkın. Kalan limonları küçük parçalar halinde dilimleyin. 3) 2 su bardağı toz şeker ve taze sıkılmış limonların suyunu karıştırın. 4) Rendelenmiş limon kabuklarını, limon parçaları ve ayıkladığınız 1 demet nane yapraklarının yarısını da ekledikten sonra şeker tamamen eriyip, tüm limonların suyu çıkana kadar yoğurun. 5) Nane yapraklarını da ekleyin. 6) Özünün çıkması için bu karışımı tel bir süzgeç yardımıyla bir kaseye süzün. 7) 5 su bardağı içme suyunu ekledikten sonra limonatayı buzdolabında soğutun. 8) 2 su bardağı buz ilavesiyle karıştırdıktan sonra  keyfini çıkararak için. Afiyet olsun!   ',
        ),
        Recipe(
          title: 'Meyan Kökü Malzemeleri ve Yapılışı ',
          malzemeler:
              "Bir kase meyan kökü lifi, 2 Litre su , İsteğe göre karanfil, tarçın, nane yaprakları",
          description:
              '1) Kaynatmaya ve şeker ilavesine ihtiyaç duyulmadan hazırlanabilen bir içecektir. 2) Meyan kökleri akan suda az bir süre yıkanarak tozlarından arındırılır. 3) Rengini ve tadını vermesi için temiz bir tülbente sarılarak tencereye konulan iki litre suyun içine bırakılır. 4) Üç - dört saat burada bekletilen meyan kökleri tencerenin içinden çıkartılır. Konulan meyan miktarı ve istenen dem seviyesi bekleme süresini belirler. Ancak demli olması halinde su eklenerek açılabilir. 5) Elde edilen şerbetin içinde tortu olabileceği düşüncesiyle tel bir süzgecin üzerine, kullanılmış olan tülbendin bir parçası getirilerek tekrar bir süzdürme muamelesi yapılır. Berraklığı korumak için dipteki bir parmak kalınlığındaki tortulu kısım süzdürme muamelesine katılmaz. Sunulacağı sürahiye aktarılırken yüksekten dökülerek köpürtülür. 6) Meyan Kökü Şerbeti arzu edilirse kokusunu değiştirmek için içerisine çubuk tarçın ve iki - üç karanfil veya nane yaprakları konularak soğuk olarak veya buz parçaları eklenmek suretiyle servis edilir. ',
        ),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return RecipeCard(
            malzemeler: recipes[index].malzemeler,
            title: recipes[index].title,
            description: recipes[index].description,
          );
        },
      ),
    );
  }
}
