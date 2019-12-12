import 'package:flutter/material.dart';
class AlertSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  SnackBar showSnackBar(alertText){
    return SnackBar(
      backgroundColor: Color.fromRGBO(4, 100, 183, 1),
        content: Container(
          child: Text("$alertText", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
        ),
      duration: Duration(seconds: 3),
    );
  }
}

class AlertSnackBarError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  SnackBar showSnackBar(alertText){
    return SnackBar(
      backgroundColor: Colors.redAccent,
      content: Container(
        child: Text("$alertText", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
      ),
      duration: Duration(seconds: 3),
    );
  }
}