import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // 앱 구동 함수
}

// 아래 4줄은 세팅 문법
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var a = 1;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // Flutter에서 앱 디자인 넣는 법 : 위젯 짜깁기
      home: Scaffold( // App을 상, 중, 하로 나눠준다.
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()), //a는 숫자니까 toString 작성
          // (현재 버튼을 눌러도 변화가 없는 이유는 재렌더링이 안되고 있기 때문이다.)
          onPressed: (){
            print(a);
            a++; // +1 해주세요

          }, // 버튼 누르면 여기 코드를 실행한다.
        ),
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder:(c, i){
            return ListTile(
              leading: Image.asset('profile.png'),
              title: Text('홍길동'),
            );
          }
        )
      )
    );
  }
}