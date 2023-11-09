/// status : 200
/// data : {"audio":[{"nid":"372","title":"test 1","audio":["https://qac.jo/sites/default/files/2022-10/file_example_MP3_700KB.mp3"]},{"nid":"375","title":"أغنية بيئتك أحميها ","audio":["https://qac.jo/sites/default/files/2022-10/%D8%A3%D8%BA%D9%86%D9%8A%D8%A9%20%D8%A8%D9%8A%D8%A6%D8%AA%D9%83%20%D8%A7%D8%AD%D9%85%D9%8A%D9%87%D8%A7%20%D8%A3%D8%AF%D8%A7%D8%A1%20%D8%A7%D9%84%D9%81%D9%86%D8%A7%D9%86%D8%A9%20%D8%B2%D9%8A%D9%86%20%D8%B9%D9%88%D8%B6.mp3"]},{"nid":"376","title":"أغنية ضم البيئة للأطفال ","audio":["https://qac.jo/sites/default/files/2022-10/%D8%A7%D8%BA%D9%86%D9%8A%D8%A9%20%D8%B6%D9%85%20%D8%A7%D9%84%D8%A8%D9%8A%D8%A6%D8%A9%20%D9%84%D9%84%D8%A7%D8%B7%D9%81%D8%A7%D9%84%20%D8%A3%D8%AF%D8%A7%D8%A1%20%D8%A7%D9%84%D8%B7%D9%81%D9%84%D8%A9%20%D8%B6%D8%AD%D9%89%20%D8%A7%D9%84%D9%87%D9%86%D8%AF%D9%8A.mp3"]},{"nid":"377","title":"أغنية التدوير فوائده كثير  ","audio":["https://qac.jo/sites/default/files/2022-10/Dor%20Dor%20Master%20with%20logo.mp3"]},{"nid":"378","title":"أغنية التدوير فوائده كثير  ","audio":["https://qac.jo/sites/default/files/2022-10/Dor%20Dor%20Master.mp3"]},{"nid":"379","title":"أغنية التدوير فوائده كثير  ","audio":["https://qac.jo/sites/default/files/2022-10/Dor%20Dor%20Master.wav"]}]}

class AudioModel {
  AudioModel({
    int? status,
    Data? data,
  }) {
    _status = status;
    _data = data;
  }

  AudioModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? _status;
  Data? _data;
  AudioModel copyWith({
    int? status,
    Data? data,
  }) =>
      AudioModel(
        status: status ?? _status,
        data: data ?? _data,
      );
  int? get status => _status;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

/// audio : [{"nid":"372","title":"test 1","audio":["https://qac.jo/sites/default/files/2022-10/file_example_MP3_700KB.mp3"]},{"nid":"375","title":"أغنية بيئتك أحميها ","audio":["https://qac.jo/sites/default/files/2022-10/%D8%A3%D8%BA%D9%86%D9%8A%D8%A9%20%D8%A8%D9%8A%D8%A6%D8%AA%D9%83%20%D8%A7%D8%AD%D9%85%D9%8A%D9%87%D8%A7%20%D8%A3%D8%AF%D8%A7%D8%A1%20%D8%A7%D9%84%D9%81%D9%86%D8%A7%D9%86%D8%A9%20%D8%B2%D9%8A%D9%86%20%D8%B9%D9%88%D8%B6.mp3"]},{"nid":"376","title":"أغنية ضم البيئة للأطفال ","audio":["https://qac.jo/sites/default/files/2022-10/%D8%A7%D8%BA%D9%86%D9%8A%D8%A9%20%D8%B6%D9%85%20%D8%A7%D9%84%D8%A8%D9%8A%D8%A6%D8%A9%20%D9%84%D9%84%D8%A7%D8%B7%D9%81%D8%A7%D9%84%20%D8%A3%D8%AF%D8%A7%D8%A1%20%D8%A7%D9%84%D8%B7%D9%81%D9%84%D8%A9%20%D8%B6%D8%AD%D9%89%20%D8%A7%D9%84%D9%87%D9%86%D8%AF%D9%8A.mp3"]},{"nid":"377","title":"أغنية التدوير فوائده كثير  ","audio":["https://qac.jo/sites/default/files/2022-10/Dor%20Dor%20Master%20with%20logo.mp3"]},{"nid":"378","title":"أغنية التدوير فوائده كثير  ","audio":["https://qac.jo/sites/default/files/2022-10/Dor%20Dor%20Master.mp3"]},{"nid":"379","title":"أغنية التدوير فوائده كثير  ","audio":["https://qac.jo/sites/default/files/2022-10/Dor%20Dor%20Master.wav"]}]

class Data {
  Data({
    List<Audio>? audio,
  }) {
    _audio = audio;
  }

  Data.fromJson(dynamic json) {
    if (json['audio'] != null) {
      _audio = [];
      json['audio'].forEach((v) {
        _audio?.add(Audio.fromJson(v));
      });
    }
  }
  List<Audio>? _audio;
  Data copyWith({
    List<Audio>? audio,
  }) =>
      Data(
        audio: audio ?? _audio,
      );
  List<Audio>? get audio => _audio;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_audio != null) {
      map['audio'] = _audio?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// nid : "372"
/// title : "test 1"
/// audio : ["https://qac.jo/sites/default/files/2022-10/file_example_MP3_700KB.mp3"]

class Audio {
  Audio({
    String? nid,
    String? title,
    List<String>? audio,
  }) {
    _nid = nid;
    _title = title;
    _audio = audio;
  }

  Audio.fromJson(dynamic json) {
    _nid = json['nid'];
    _title = json['title'];
    _audio = json['audio'] != null ? json['audio'].cast<String>() : [];
  }
  String? _nid;
  String? _title;
  List<String>? _audio;
  Audio copyWith({
    String? nid,
    String? title,
    List<String>? audio,
  }) =>
      Audio(
        nid: nid ?? _nid,
        title: title ?? _title,
        audio: audio ?? _audio,
      );
  String? get nid => _nid;
  String? get title => _title;
  List<String>? get audio => _audio;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['nid'] = _nid;
    map['title'] = _title;
    map['audio'] = _audio;
    return map;
  }
}
