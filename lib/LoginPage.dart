import 'dart:math';

import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title = 'EcoApp';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  bool displayed = true;
  AnimationController animationController;
  AnimationController animationController2;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // animationController = new AnimationController(
    //   duration: new Duration(seconds: 30),
    //   vsync: this,
    // );
    // animationController.repeat();

    // _animation = new Tween<double>(
    //   begin: 0,
    //   end: 5,
    // ).animate(animationController)
    //   ..addStatusListener((status) {
    //     if (status == AnimationStatus.completed) {
    //       animationController.reverse();
    //     } else if (status == AnimationStatus.dismissed) {
    //       animationController.forward();
    //     }
    //   });
    // _animation.

    // animationController2 = new AnimationController(
    //   duration: new Duration(milliseconds: 500),
    //   vsync: this,
    // );
    // animationController2.repeat(reverse: true);
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 2), () {});
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: Color(0xff2DBEEA),
            ),
            Positioned(
              top: 10,
              child: Animator(
                repeats: 0,
                duration: Duration(seconds: 30),
                tween: Tween<double>(begin: 0, end: 2 * pi),
                builder: (anim) => Transform.rotate(
                  angle: anim.value,
                  child: Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('resources/tierra.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 50,
              child: Animator(
                // repeats: 0, // REPEAT FROM START
                cycles: 0, // REVERSE ANIMATION
                duration: Duration(milliseconds: 500),
                resetAnimationOnRebuild: false,
                tween: Tween<Offset>(begin: Offset(0, 0), end: Offset(2, 5)),
                builder: (anim) => Transform.translate(
                  offset: anim.value,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('resources/nube1.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 200,
              right: 50,
              child: Animator(
                // repeats: 0, // REPEAT FROM START
                cycles: 0, // REVERSE ANIMATION
                duration: Duration(milliseconds: 500),
                resetAnimationOnRebuild: false,
                tween: Tween<Offset>(begin: Offset(0, 0), end: Offset(2, 5)),
                builder: (anim) => Transform.translate(
                  offset: anim.value,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('resources/nube2.png'),
                  ),
                ),
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              height: displayed ? MediaQuery.of(context).size.height - 60 : 0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xff334339),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 10.0,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Column(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    'EcoApp',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'La naturaleza no hace nada incompleto ni nada en vano',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 250),
              bottom: displayed ? 10 : -50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Color(0xff334339),
                    elevation: 10,
                    child: Text(
                      'INICIA A CAMBIAR EL MUNDO',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    onPressed: () {
                      setState(() {
                        displayed = false;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('EcoApp'),
    //   ),
    // );
  }
}
