import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.setString('name', 'hayah');
              sp.setInt('age', 20);
              print(sp.getString("name"));

              print('tap');
              add(2, 4);
              func();
            },
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.green,
              child: Center(
                child: Text('Click'),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> func() async {
    // Wait until you get your desired result
    await Future.delayed(Duration(seconds: 10));
    print("delayed");
  }
}

void add(int x, int y) {
  print(x + y);
}
