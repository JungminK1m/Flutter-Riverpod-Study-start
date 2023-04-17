class ResponseDTO {
  final int? code;
  final String? msg;
  String? token;
  // dynamic은 ? 안붙여도 됨
  dynamic data; // JsonArray [], JsonObject {}

  ResponseDTO({
    this.code,
    this.msg,
    this.data,
  });

  ResponseDTO.fromJson(Map<String, dynamic> json)
      : code = json["code"],
        msg = json["msg"],
        data = json["data"];
}