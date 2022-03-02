import 'package:flutter/material.dart';

class MyLayouts extends StatelessWidget {
  const MyLayouts({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu layout demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Meu layout demo"),
        ),
        body: Center(
          child: Text("Olá mundo"),
        ),
      )
    );
  }
}