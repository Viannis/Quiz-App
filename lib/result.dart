import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(resultScore.toString(),textAlign: TextAlign.center,),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: FlatButton(
              child: Text("Restart"),
              onPressed: resetHandler,
            ),
          ),
        ],
      ),
    );
  }
}