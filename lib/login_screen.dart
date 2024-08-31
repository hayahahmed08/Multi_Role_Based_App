import 'package:flutter/material.dart';

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
            onTap: () {
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

  void add(int x, int y) { 
    print(x + y);
  }

  Future<void> func() async{ //wait until u get ur desired result
   await Future.delayed(Duration(seconds: 10));
   print("delayed");
  }
}
