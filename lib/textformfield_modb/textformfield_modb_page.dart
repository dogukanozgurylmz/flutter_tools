import 'package:flutter/material.dart';

import 'textformfield_modb.dart';

class TextFieldModbPage extends StatelessWidget {
  const TextFieldModbPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Modb'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //   TextFormFieldModb Samples
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Simple TextFormFieldModb'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SimpleTextFormFieldModb(controller: controller),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Colorize TextFormFieldModb'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ColorizeTextFormFieldModb(controller: controller),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  ------ TextFormFieldModb Samples ------

class ColorizeTextFormFieldModb extends StatelessWidget {
  const ColorizeTextFormFieldModb({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldModb(
      controller: controller,
      fillColor: Colors.blueAccent.withOpacity(0.8),
      shadowColor: Colors.blueAccent.withOpacity(0.5),
      cursorColor: Colors.white,
      textStyle: const TextStyle(color: Colors.white),
      labelText: 'Colorize TextFormFieldModb',
      labelStyle: const TextStyle(color: Colors.white),
    );
  }
}

class SimpleTextFormFieldModb extends StatelessWidget {
  const SimpleTextFormFieldModb({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldModb(
      controller: controller,
      labelText: 'Simple TextFormFieldModb',
    );
  }
}
