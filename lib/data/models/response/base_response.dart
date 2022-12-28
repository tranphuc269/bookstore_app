class BaseResponse {
  BaseResponse({required this.meta});

  BaseStatus meta;
}

class BaseStatus {
  BaseStatus({required this.code, required this.message});

  factory BaseStatus.fromJson(Map<String, dynamic> json) {
    return BaseStatus(
      code: json['code'],
      message: json['message'],
    );
  }

  int code;
  String message;
}
