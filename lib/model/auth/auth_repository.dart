
// AuthRepository 관리자라는 뜻
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_blog_start/dto/response_dto.dart';

import '../../core/constants/http.dart';
import '../../dto/auth_request.dart';
import '../user/user.dart';

final AuthRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(); // 싱글톤으로 관리함
});

// 통신하는 애
class AuthRepository {
  // 통신하려면 DIO가 필요함


  Future<ResponseDTO> fetchJoin(JoinReqDTO joinReqDTO) async{

    // 1. 통신 시작
    Response response = await dio.post("/join", data: joinReqDTO.toJson());

    // 2. DTO 파싱
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    responseDTO.data = User.fromJson(responseDTO.data);

    // 3. 토큰 받기
    responseDTO.token = response.headers["authorization"].toString();
    return responseDTO;

    }
}