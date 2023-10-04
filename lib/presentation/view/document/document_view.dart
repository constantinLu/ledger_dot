import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../home/home_model.dart';

class DocumentView extends StatelessWidget {
  DocumentView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeModel>.reactive(
        viewModelBuilder: () => HomeModel(),
        builder: (context, homeModel, child) =>
            Scaffold(
                body: Center(child: Text("Document"))));
  }
}