import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title = 'EcoApp';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool displayed = true;

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 2), () {});
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: Color(0xff4B8563),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              height: displayed
                  ? MediaQuery.of(context).size.height - 60
                  : MediaQuery.of(context).size.height / 2,
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
