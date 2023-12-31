import 'package:flutter/material.dart';
import 'package:reskill_x/component/main_button.dart';

import '../constant/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ホーム画面"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("ホーム画面"),
            const SizedBox(
              height: 10,
            ),
            MainButton(
              buttonColor: purple,
              buttonTitle: 'ホームボタン',
              onTapped: () {
                print("aa");
              },
            )
          ],
        ),
      ),
    );
  }
}
