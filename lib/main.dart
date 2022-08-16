import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 2, // ratio dla expand
            child: TextButton(
              onPressed: () {
                print('lewy wcisniety');
              },
              // padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'images/dice1.png',
              ),
            ),
          ),
          Expanded(
            // flex: 1,// ratio dla expand
            child: TextButton(
              onPressed: () {
                print('prawy wcisniety');
              },
              // padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'images/dice3.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// child: Image(
// image: AssetImage('images/dice1.png'),
// ),
