import 'package:flutter/cupertino.dart';
import 'package:raven/raven.dart';

class GenericContainer extends StatelessWidget {
  final String title;

  GenericContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
