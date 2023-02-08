import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import '../providers/providers.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("MainScreen is triggered!");
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (context, ref, child) {
            return Text(ref.watch(titleProvider));
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const MyText(),
            const MyCounterText(),
            const IsDouble(),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const IncreaseFAB(),
          const SizedBox(
            width: 10,
          ),
          const DecreaseFAB(),
        ],
      ),
    );
  }
}
