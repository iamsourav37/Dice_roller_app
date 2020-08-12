import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage image1, image2;


  @override
  initState() {
    super.initState();
    image1 = one;
    image2 = six;
  }

  rollTheDice() {
    int rndm1 = Random().nextInt(6);
    int rndm2 = Random().nextInt(6);

    switch (rndm1) {
      case 1:
        image1 = one;
        break;
      case 2:
        image1 = two;
        break;
      case 3:
        image1 = three;
        break;
      case 4:
        image1 = four;
        break;
      case 5:
        image1 = five;
        break;
      case 6:
        image1 = six;
        break;
    }

    switch (rndm2) {
      case 1:
        image2 = one;
        break;
      case 2:
        image2 = two;
        break;
      case 3:
        image2 = three;
        break;
      case 4:
        image2 = four;
        break;
      case 5:
        image2 = five;
        break;
      case 6:
        image2 = six;
        break;
    }

    if(image1 == image2)
      bodyColor = Colors.greenAccent;
    else
      bodyColor = Colors.white;

    setState(() {});
  }
  Color bodyColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller App",
        style: TextStyle(
          fontSize: 30.0,
        ),),
        centerTitle: true,
      ),
      backgroundColor: bodyColor,
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: Image(
                  width: 250,
                  image: image1,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 30.0),
                child: Image(
                  width: 250,
                  image: image2,
                ),
              ),
              RaisedButton(
                onPressed: rollTheDice,
                child: Text(
                  "ROLL THE DICE",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.amber,
                padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                splashColor: Colors.red,
                elevation: 4.7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
