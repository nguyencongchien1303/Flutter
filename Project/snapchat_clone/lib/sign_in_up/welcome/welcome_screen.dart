import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:snapchat_clone/Animations/FadeAnimation.dart';
import 'package:snapchat_clone/sign_in_up/sign_in/sign_in_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  AnimationController _scaleController;
  AnimationController _scale2Controller;
  AnimationController _widthController;
  AnimationController _positionController;

  Animation<double> _scaleAnimation;
  Animation<double> _scale2Animation;
  Animation<double> _widthAnimation;
  Animation<double> _positionAnimation;

  bool hideIcon = false;

  @override
  void initState() {
    super.initState();
    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_scaleController)
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                _widthController.forward();
              }
            },
          );
    _widthController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    _widthAnimation =
        Tween<double>(begin: 80.0, end: 300.0).animate(_widthController)
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                _positionController.forward();
              }
            },
          );

    _positionController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _positionAnimation =
        Tween<double>(begin: 0.0, end: 215.0).animate(_positionController)
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                setState(() {
                  hideIcon = true;
                });
                _scale2Controller.forward();
              }
            },
          );

    _scale2Controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _scale2Animation =
        Tween<double>(begin: 1.0, end: 32.0).animate(_scale2Controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: SignInScreen()));
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: -50,
              left: 0,
              child: FadeAnimation(
                1.0,
                Container(
                  width: size.width,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/one.png'),
                      colorFilter:
                          ColorFilter.mode(Color(0xFFfa7e1e), BlendMode.srcIn),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -100,
              left: 0,
              child: FadeAnimation(
                1.3,
                Container(
                  width: size.width,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/one.png'),
                      colorFilter:
                          ColorFilter.mode(Color(0xFFfa7e1e), BlendMode.srcIn),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -150,
              left: 0,
              child: FadeAnimation(
                1.6,
                Container(
                  width: size.width,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/one.png'),
                      colorFilter:
                          ColorFilter.mode(Color(0xFFfa7e1e), BlendMode.srcIn),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                    1,
                    Text(
                      "Welcome",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  FadeAnimation(
                    1.3,
                    Text(
                      "We promis that you'll have the most \nfuss-free time with us ever.",
                      style: TextStyle(
                        color: Theme.of(context)
                            .textTheme
                            .headline1
                            .color
                            .withOpacity(.7),
                        height: 1.4,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 180),
                  FadeAnimation(
                    1.6,
                    AnimatedBuilder(
                      animation: _scaleController,
                      builder: (context, child) => Transform.scale(
                        scale: _scaleAnimation.value,
                        child: Center(
                          child: AnimatedBuilder(
                            animation: _widthController,
                            builder: (context, child) => Container(
                              width: _widthAnimation.value,
                              height: 80,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFFfa7e1e).withOpacity(0.4)),
                              child: InkWell(
                                onTap: () {
                                  _scaleController.forward();
                                },
                                child: Stack(
                                  children: [
                                    AnimatedBuilder(
                                      animation: _positionController,
                                      builder: (context, state) {
                                        return Positioned(
                                          left: _positionAnimation.value,
                                          child: AnimatedBuilder(
                                            animation: _scale2Controller,
                                            builder: (context, state) {
                                              return Transform.scale(
                                                scale: _scale2Animation.value,
                                                child: Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topRight,
                                                      end: Alignment.bottomLeft,
                                                      colors: [
                                                        Color(0xFFfeda75),
                                                        Color(0xFFfa7e1e),
                                                        Color(0xFFd62976),
                                                        Color(0xFF962fbf),
                                                        Color(0xFF4f5bd5),
                                                      ],
                                                    ),
                                                  ),
                                                  child: hideIcon == false
                                                      ? Icon(
                                                          Icons.arrow_forward,
                                                          color: Colors.white,
                                                        )
                                                      : Container(),
                                                ),
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
