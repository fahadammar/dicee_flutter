import 'package:flutter/material.dart';
// Math Library For Random Numbers
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //* Variables
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  //? DiceNumber Function
  void diceNumber() {
    this.setState(() {
      // Assign Random Number To The Left Dice
      this.leftDiceNumber = Random().nextInt(6) + 1;
      // Assign Random Number To The Right Dice
      this.rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          //? LEFT DICE
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceNumber();
              },
              child: Image.asset("images/dice$leftDiceNumber.png"),
            ),
          ),
          //! RIGHT DICE
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceNumber();
              },
              child: Image.asset("images/dice$rightDiceNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
