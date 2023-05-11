class FlagModel {
  FlagModel({
    this.value,
  });

  FlagModel.fromJson(dynamic json) {
    value = json['value'];
  }
  int? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }
}
