
import 'package:flutter_riverpod_blog_start/model/user/user.dart';

// 최초 앱이 실행될 때 초기화 되어야 함.
// 1. jwt 존재 유무 확인 (I/O) - 통신
// 2. jwt로 회원정보 받아 봄. (I/O) - 통신
// 3. 받아지면 토큰 유효, 안받아지면 안 유효.
// 4. OK-> loginSuccess() 호출
// 5. FAIL -> loginPage로 이동
class SessionUser {

  // sharedpreference : 핸드폰 앱의 저장공간. 지우면 데이터 날아감
  // 앱이 켜졌을 때 제일 먼저 하는 것 : 토큰 검사
  // 동기적으로 통신해야 함! await 했다가 다운 다 받고 화면 넘어가야 함

// 로그아웃을 할 때 날려야 하기 때문에 null 허용하도록 만들어야 함
  User? user;
  String? jwt;
  bool? isLogin;

  // 이 토큰이 유효한 지 확인 필요 -> 어떻게? - 통신! "이 토큰이 정상이야?"
  void loginSuccess(User user){
    this.user = user;
    this.jwt = jwt;
    this.isLogin = true;
  }

  void logoutSuccess(){
    this.user = null;
    this.jwt = null;
    this.isLogin = false;
  }
}