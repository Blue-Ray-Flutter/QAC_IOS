import 'dart:convert';

/// main_slider : [{"title":"مسابقة الملكة علياء للمسؤولية الاجتماعية","body":"حملة التوعية باستعادة النظم البيئية سلوكنا اليومي الصغير ... أثره في بيئتنا كبير","image":"https://www.qac.jo/sites/default/files/2022-10/qqqqqqqqqqq_0.jpg"},{"title":".","body":"حملة التوعية باستعادة النظم البيئية سلوكنا اليومي الصغير ... أثره في بيئتنا كبير","image":"https://www.qac.jo/sites/default/files/2022-10/qqqqqqqqqqq.jpg"}]
/// counts_data : [{"title":"الفائزين","count":"56851","image":"https://www.qac.jo/sites/default/files/2022-09/Layer%205.jpg"},{"title":"الوصول ","count":"5701000","image":"https://www.qac.jo/sites/default/files/2022-09/Layer%202.jpg"},{"title":"المشاركين","count":"12897419","image":"https://www.qac.jo/sites/default/files/2022-09/Layer%204.jpg"}]
/// partners_slider : [{"title":"وزارة البيئة ","link":"http://www.moenv.gov.jo/Default/Ar","image":"https://www.qac.jo/sites/default/files/2022-10/Logo-Ara.png"},{"title":"وزارة التربية و التعليم ","link":"https://moe.gov.jo/","image":"https://www.qac.jo/sites/default/files/2022-09/%D8%AA%D8%AA%D8%AA_1.png"},{"title":"وزارة الزراعة ","link":"https://www.moa.gov.jo/Default/Ar#","image":"https://www.qac.jo/sites/default/files/2022-10/444.png"},{"title":"أمانة عمان الكبرى ","link":"https://www.ammancity.gov.jo/ar/main/index.aspx#","image":"https://www.qac.jo/sites/default/files/2022-10/Untitled-1.png"},{"title":"التلفزيون الأردني ","link":"https://www.jrtv.gov.jo/#","image":"https://www.qac.jo/sites/default/files/2022-10/33.png"},{"title":"Gimmick media","link":"http://gimmick.media/#","image":"https://www.qac.jo/sites/default/files/2022-10/i.png"},{"title":"البنك الأهلي ","link":"https://ahli.com/#","image":"https://www.qac.jo/sites/default/files/2022-10/1.png"},{"title":"شركة الشرق الأوسط للتأمين ","link":"http://www.meico.com.jo/en/#","image":"https://www.qac.jo/sites/default/files/2022-10/logo.jpg"},{"title":"Menaitech","link":"https://menaitech.com/?gclid=EAIaIQobChMIlM_qm_np-gIVB8J3Ch2LAgKYEAAYASAAEgJXRPD_BwE#","image":"https://www.qac.jo/sites/default/files/2022-10/a.png"},{"title":"شركة الكربونات الأردنية ","link":"https://www.jordancarbonate.com/#","image":"https://www.qac.jo/sites/default/files/2022-10/s.png"},{"title":"البنك العربي الاسلامي الدولي ","link":"https://iiabank.com.jo/#","image":"https://www.qac.jo/sites/default/files/2022-10/22.png"},{"title":"المناصير ","link":"https://mgc-gas.jo/#","image":"https://www.qac.jo/sites/default/files/2022-10/m.png"},{"title":"شركة التأمين الاسلامية ","link":"https://www.islamicinsurance.jo/ar#","image":"https://www.qac.jo/sites/default/files/2022-10/t_0.png"},{"title":"وزارة الداخلية ","link":"https://moi.gov.jo/Default/Ar#","image":"https://www.qac.jo/sites/default/files/2022-10/b.png"},{"title":"اذاعة الجامعة الأردنية ","link":"http://jufm.ju.edu.jo/Home.aspx","image":"https://www.qac.jo/sites/default/files/2022-10/1_0.png"},{"title":"اذاعة روتانا","link":"https://ar-ar.facebook.com/RotanaRadioJo/","image":"https://www.qac.jo/sites/default/files/2022-10/3.png"},{"title":"اذاعة يقين","link":"https://yaqeen.jo1jo.org/","image":"https://www.qac.jo/sites/default/files/2022-10/2.png"},{"title":"اذاعة فن اف ام ","link":"https://ar-ar.facebook.com/RadioFann/","image":"https://www.qac.jo/sites/default/files/2022-10/5.png"},{"title":"اذاعة أمن اف ام ","link":"https://www.amenfm.jo/","image":"https://www.qac.jo/sites/default/files/2022-10/4.png"},{"title":"صوت الكرك بث مباشر","link":"https://ar-ar.facebook.com/Radio.Sawt.AlKarak91.9.FM/","image":"https://www.qac.jo/sites/default/files/2022-11/%D8%B4%D8%B9%D8%A7%D8%B1%20%D8%A7%D9%84%D8%A5%D8%B0%D8%A7%D8%B9%D8%A9%20%D9%85%D9%81%D8%B1%D8%BA.png"},{"title":" إذاعة هوا عمان ","link":"https://ar-ar.facebook.com/RadioHawaAmman/","image":"https://www.qac.jo/sites/default/files/2022-11/ewewewe.jpg"}]
/// efawateercom_link : ""

HomePageContent homePageContentFromJson(String str) =>
    HomePageContent.fromJson(json.decode(str));
String homePageContentToJson(HomePageContent data) =>
    json.encode(data.toJson());

class HomePageContent {
  HomePageContent({
    List<MainSlider>? mainSlider,
    List<CountsData>? countsData,
    List<PartnersSlider>? partnersSlider,
    String? efawateercomLink,
  }) {
    _mainSlider = mainSlider;
    _countsData = countsData;
    _partnersSlider = partnersSlider;
    _efawateercomLink = efawateercomLink;
  }

  HomePageContent.fromJson(dynamic json) {
    if (json['main_slider'] != null) {
      _mainSlider = [];
      json['main_slider'].forEach((v) {
        _mainSlider?.add(MainSlider.fromJson(v));
      });
    }
    if (json['counts_data'] != null) {
      _countsData = [];
      json['counts_data'].forEach((v) {
        _countsData?.add(CountsData.fromJson(v));
      });
    }
    if (json['partners_slider'] != null) {
      _partnersSlider = [];
      json['partners_slider'].forEach((v) {
        _partnersSlider?.add(PartnersSlider.fromJson(v));
      });
    }
    _efawateercomLink = json['efawateercom_link'];
  }
  List<MainSlider>? _mainSlider;
  List<CountsData>? _countsData;
  List<PartnersSlider>? _partnersSlider;
  String? _efawateercomLink;
  HomePageContent copyWith({
    List<MainSlider>? mainSlider,
    List<CountsData>? countsData,
    List<PartnersSlider>? partnersSlider,
    String? efawateercomLink,
  }) =>
      HomePageContent(
        mainSlider: mainSlider ?? _mainSlider,
        countsData: countsData ?? _countsData,
        partnersSlider: partnersSlider ?? _partnersSlider,
        efawateercomLink: efawateercomLink ?? _efawateercomLink,
      );
  List<MainSlider>? get mainSlider => _mainSlider;
  List<CountsData>? get countsData => _countsData;
  List<PartnersSlider>? get partnersSlider => _partnersSlider;
  String? get efawateercomLink => _efawateercomLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_mainSlider != null) {
      map['main_slider'] = _mainSlider?.map((v) => v.toJson()).toList();
    }
    if (_countsData != null) {
      map['counts_data'] = _countsData?.map((v) => v.toJson()).toList();
    }
    if (_partnersSlider != null) {
      map['partners_slider'] = _partnersSlider?.map((v) => v.toJson()).toList();
    }
    map['efawateercom_link'] = _efawateercomLink;
    return map;
  }
}

/// title : "وزارة البيئة "
/// link : "http://www.moenv.gov.jo/Default/Ar"
/// image : "https://www.qac.jo/sites/default/files/2022-10/Logo-Ara.png"

PartnersSlider partnersSliderFromJson(String str) =>
    PartnersSlider.fromJson(json.decode(str));
String partnersSliderToJson(PartnersSlider data) => json.encode(data.toJson());

class PartnersSlider {
  PartnersSlider({
    String? title,
    String? link,
    String? image,
  }) {
    _title = title;
    _link = link;
    _image = image;
  }

  PartnersSlider.fromJson(dynamic json) {
    _title = json['title'];
    _link = json['link'];
    _image = json['image'];
  }
  String? _title;
  String? _link;
  String? _image;
  PartnersSlider copyWith({
    String? title,
    String? link,
    String? image,
  }) =>
      PartnersSlider(
        title: title ?? _title,
        link: link ?? _link,
        image: image ?? _image,
      );
  String? get title => _title;
  String? get link => _link;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['link'] = _link;
    map['image'] = _image;
    return map;
  }
}

/// title : "الفائزين"
/// count : "56851"
/// image : "https://www.qac.jo/sites/default/files/2022-09/Layer%205.jpg"

CountsData countsDataFromJson(String str) =>
    CountsData.fromJson(json.decode(str));
String countsDataToJson(CountsData data) => json.encode(data.toJson());

class CountsData {
  CountsData({
    String? title,
    String? count,
    String? image,
  }) {
    _title = title;
    _count = count;
    _image = image;
  }

  CountsData.fromJson(dynamic json) {
    _title = json['title'];
    _count = json['count'];
    _image = json['image'];
  }
  String? _title;
  String? _count;
  String? _image;
  CountsData copyWith({
    String? title,
    String? count,
    String? image,
  }) =>
      CountsData(
        title: title ?? _title,
        count: count ?? _count,
        image: image ?? _image,
      );
  String? get title => _title;
  String? get count => _count;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['count'] = _count;
    map['image'] = _image;
    return map;
  }
}

/// title : "مسابقة الملكة علياء للمسؤولية الاجتماعية"
/// body : "حملة التوعية باستعادة النظم البيئية سلوكنا اليومي الصغير ... أثره في بيئتنا كبير"
/// image : "https://www.qac.jo/sites/default/files/2022-10/qqqqqqqqqqq_0.jpg"

MainSlider mainSliderFromJson(String str) =>
    MainSlider.fromJson(json.decode(str));
String mainSliderToJson(MainSlider data) => json.encode(data.toJson());

class MainSlider {
  MainSlider({
    String? title,
    String? body,
    String? image,
  }) {
    _title = title;
    _body = body;
    _image = image;
  }

  MainSlider.fromJson(dynamic json) {
    _title = json['title'];
    _body = json['body'];
    _image = json['image'];
  }
  String? _title;
  String? _body;
  String? _image;
  MainSlider copyWith({
    String? title,
    String? body,
    String? image,
  }) =>
      MainSlider(
        title: title ?? _title,
        body: body ?? _body,
        image: image ?? _image,
      );
  String? get title => _title;
  String? get body => _body;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['body'] = _body;
    map['image'] = _image;
    return map;
  }
}
