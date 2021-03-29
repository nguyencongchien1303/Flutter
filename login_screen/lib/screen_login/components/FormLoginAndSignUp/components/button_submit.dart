import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonSubmit extends StatefulWidget {
  bool isShowShadow;
  ButtonSubmit({Key key, this.isShowShadow}) : super(key: key);

  @override
  _ButtonSubmitState createState() => _ButtonSubmitState();
}

class _ButtonSubmitState extends State<ButtonSubmit> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.72 - ((size.width * 0.24) / 2),
      right: 0,
      left: 0,
      child: Center(
        child: Container(
          height: size.width * 0.24,
          width: size.width * 0.24,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                if (widget.isShowShadow)
                  BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    spreadRadius: 1.5,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  )
              ]),
          child: !(widget.isShowShadow)
              ? Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.orange[200], Colors.red[400]],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                )
              : Center(),
        ),
      ),
    );
  }
}
