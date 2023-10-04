import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:raven/raven.dart';

import '../../domain/assets.dart';

class LedgerLogo extends StatelessWidget {
  LedgerLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
        richMessage: TextSpan(
          text: greet(),
          style: const TextStyle(
            color: kcGreyDim,
            fontSize: 16.0,
          ),
        ),
        decoration: BoxDecoration(
          color: kcBlackErie,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: SvgPicture.asset(
          ledgerLogoRevWhite,
          semanticsLabel: 'Image',
          fit: BoxFit.fitHeight,
        ).moveUpOnHover);
  }
}

String greet() {
  final currentTime = DateTime.now();
  final hour = currentTime.hour;

  String greeting;

  if (hour < 12) {
    greeting = 'Hey, good morning!';
  } else if (hour < 17) {
    greeting = 'Hey, Good afternoon!';
  } else {
    greeting = 'Hey, Good evening!';
  }

  return " \u{1F44B} $greeting";
}
