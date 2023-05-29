class FlagModel {
  FlagModel({
    this.value,
  });

  FlagModel.fromJson(dynamic json) {
    value = json['flag'];
  }
  int? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['flag'] = value;
    return map;
  }
}
