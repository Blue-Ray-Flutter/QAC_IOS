/// status : 200
/// data : {"images":["https://qac.jo/sites/default/files/2022-09/20216.png","https://qac.jo/sites/default/files/2022-09/20211.png","https://qac.jo/sites/default/files/2022-09/ab.png","https://qac.jo/sites/default/files/2022-09/ac.png","https://qac.jo/sites/default/files/2022-09/ad.png","https://qac.jo/sites/default/files/2022-09/af.png","https://qac.jo/sites/default/files/2022-09/ah.png","https://qac.jo/sites/default/files/2022-09/g.png","https://qac.jo/sites/default/files/2022-09/ab_0.png","https://qac.jo/sites/default/files/2022-09/ac_0.png","https://qac.jo/sites/default/files/2022-09/ad_0.png","https://qac.jo/sites/default/files/2022-09/af_0.png","https://qac.jo/sites/default/files/2022-09/ah_0.png","https://qac.jo/sites/default/files/2022-09/g_0.png"]}

class MediaModel {
  MediaModel({
    int? status,
    Data? data,
  }) {
    _status = status;
    _data = data;
  }

  MediaModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? _status;
  Data? _data;
  MediaModel copyWith({
    int? status,
    Data? data,
  }) =>
      MediaModel(
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

/// images : ["https://qac.jo/sites/default/files/2022-09/20216.png","https://qac.jo/sites/default/files/2022-09/20211.png","https://qac.jo/sites/default/files/2022-09/ab.png","https://qac.jo/sites/default/files/2022-09/ac.png","https://qac.jo/sites/default/files/2022-09/ad.png","https://qac.jo/sites/default/files/2022-09/af.png","https://qac.jo/sites/default/files/2022-09/ah.png","https://qac.jo/sites/default/files/2022-09/g.png","https://qac.jo/sites/default/files/2022-09/ab_0.png","https://qac.jo/sites/default/files/2022-09/ac_0.png","https://qac.jo/sites/default/files/2022-09/ad_0.png","https://qac.jo/sites/default/files/2022-09/af_0.png","https://qac.jo/sites/default/files/2022-09/ah_0.png","https://qac.jo/sites/default/files/2022-09/g_0.png"]

class Data {
  Data({
    List<String>? images,
  }) {
    _images = images;
  }

  Data.fromJson(dynamic json) {
    _images = json['images'] != null ? json['images'].cast<String>() : [];
  }
  List<String>? _images;
  Data copyWith({
    List<String>? images,
  }) =>
      Data(
        images: images ?? _images,
      );
  List<String>? get images => _images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['images'] = _images;
    return map;
  }
}
