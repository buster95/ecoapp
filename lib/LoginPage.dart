import 'dart:math';

import 'package:animator/animator.dart';
import 'package:ecoapp/widgets/textField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title = 'EcoApp';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool displayed = false;
  Color green = Color(0xff3C8769);
  double worldPosition = 20;

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 2), () {});
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Stack(
          // overflow: Overflow.clip,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: Color(0xff2DBEEA),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 1200),
              width: MediaQuery.of(context).size.width,
              top: displayed ? 0 : worldPosition + 300,
              curve: Curves.elasticOut,
              child: Center(
                child: Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 40,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 35),
                      Text(
                        'Eco App',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      CustomTextField(
                        labelText: 'Correo Electronico',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20),
                      CustomTextField(
                        labelText: 'Contrasena',
                        obscureText: true,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(this.green),
                          padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          ),
                          elevation: WidgetStateProperty.all(10),
                        ),
                        // color: this.green,
                        // elevation: 10,
                        child: Text(
                          'Iniciar Sesion',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onPressed: () {
                          setState(() {
                            displayed = false;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: worldPosition,
              child: Animator<double>(
                repeats: 0,
                duration: Duration(seconds: 30),
                tween: Tween<double>(begin: 0, end: 2 * pi),
                builder: (context, animationState, child) => Transform.rotate(
                  angle: animationState.value,
                  child: Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('resources/tierra.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: worldPosition + 80,
              left: 50,
              child: Animator(
                // repeats: 0, // REPEAT FROM START
                cycles: 0, // REVERSE ANIMATION
                duration: Duration(milliseconds: 500),
                resetAnimationOnRebuild: false,
                tween: Tween<Offset>(begin: Offset(0, 0), end: Offset(2, 5)),
                builder: (context, animatorState, child) => Transform.translate(
                  offset: animatorState.value,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('resources/nube1.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: worldPosition + 200,
              right: 50,
              child: Animator(
                // repeats: 0, // REPEAT FROM START
                cycles: 0, // REVERSE ANIMATION
                duration: Duration(milliseconds: 500),
                resetAnimationOnRebuild: false,
                tween: Tween<Offset>(begin: Offset(0, 0), end: Offset(-2, 5)),
                builder: (context, animatorState, child) => Transform.translate(
                  offset: animatorState.value,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('resources/nube3.png'),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 1000),
              top: displayed ? 0 : (MediaQuery.of(context).size.height * -1),
              bottom: displayed ? 69 : MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              // height: displayed ? MediaQuery.of(context).size.height - 70 : 0,
              child: Container(
                decoration: BoxDecoration(
                  color: this.green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10.0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              bottom: displayed ? 10 : -50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      padding: WidgetStateProperty.all(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                      elevation: WidgetStateProperty.all(10),
                    ),
                    // color: this.green,
                    // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    // elevation: 10,
                    child: Text(
                      'INICIA A CAMBIAR EL MUNDO',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      setState(() {
                        displayed = false;
                      });
                    },
                  ),
                ],
              ),
            ),
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
