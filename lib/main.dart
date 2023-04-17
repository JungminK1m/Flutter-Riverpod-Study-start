import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_blog_start/core/constants/move.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async{
  //myApp 시작 전에 필요한 것 여기서 다 로딩(동기적 실행)
  WidgetsFlutterBinding.ensureInitialized();
  // 1. 시큐어 스토리지에 JWT 있는지 확인
  // 2. JWT를 가지고 회원정보를 가져와서!
  // 3. SessionUser 동기화 (ref에 접근해야 함)

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: Move.loginPage,
      routes: getRouters(),
    );
  }
}