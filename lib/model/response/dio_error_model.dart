class DioErrorModel {
  DioErrorModel({
    dynamic code,
    dynamic message,
    bool? status,
  }) {
    _code = code;
    _message = message;
    _status = status;
  }

  DioErrorModel.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _status = json['status'];
  }

  dynamic _code;
  dynamic _message;
  bool? _status;

  dynamic get code => _code;

  dynamic get message => _message;

  bool? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['message'] = _message;
    map['status'] = _status;
    return map;
  }
}
