import 'package:flutter/material.dart';

class RowsAndColumns extends StatelessWidget {
  const RowsAndColumns({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : ("Testes com Colunas e Filas"),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Image.asset("assets/ball.png"),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.asset("assets/ball.png"),
                  ),
                  Expanded(
                    child: Image.asset("assets/ball.png"),
                  ),
                ],
                
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Image.asset("assets/ball.png"),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.asset("assets/ball.png"),
                  ),
                  Expanded(
                    child: Image.asset("assets/ball.png"),
                  ),
                ],
                
              )
            )
          ],
        ),
      )
    );
  }
}