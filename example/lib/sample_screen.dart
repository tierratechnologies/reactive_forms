import 'package:flutter/material.dart';
import 'package:reactive_forms_example/drawer.dart';

class SampleScreen extends StatelessWidget {
  final Widget body;
  final Widget title;

  const SampleScreen({Key? key, required this.body, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: title),
      drawer: AppDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          child: this.body,
        ),
      ),
    );
  }
}
