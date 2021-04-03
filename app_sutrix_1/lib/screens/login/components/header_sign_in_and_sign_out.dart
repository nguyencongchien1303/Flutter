import 'package:app_sutrix_1/blocs/switch_signin_signup_bloc.dart';
import 'package:app_sutrix_1/events/switch_signin_signup_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';

class HeaderSignInAndSignUp extends StatefulWidget {
  final bool dark;
  const HeaderSignInAndSignUp({
    Key key,
    this.dark,
  }) : super(key: key);
  @override
  _SignInAndSignUpState createState() => _SignInAndSignUpState();
}

class _SignInAndSignUpState extends State<HeaderSignInAndSignUp> {
  List<String> categories = ["Sign In", "Sign Up"];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal, //set cho nó nằm ngang
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index, widget.dark),
        ),
      ),
    );
  }

  Widget buildCategory(int index, bool dark) {
    return BlocBuilder<SwitchSignInSignUpBloc, bool>(
        builder: (context, switchInUp) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
            if (selectedIndex == 0) {
              context
                  .read<SwitchSignInSignUpBloc>()
                  .add(SwitchSignInSignUpEvent.signIn);
            } else {
              context
                  .read<SwitchSignInSignUpBloc>()
                  .add(SwitchSignInSignUpEvent.signUp);
            }
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                curve: Curves.bounceInOut,
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index
                        ? (!dark ? Colors.white : kTextColor)
                        : kTextLightColor,
                  ),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                curve: Curves.bounceInOut,
                margin: EdgeInsets.only(top: kDefaultPaddin / 6),
                height: 4,
                width: 30,
                color: selectedIndex == index
                    ? kBackgroundColor
                    : Colors.transparent,
              ),
            ],
          ),
        ),
      );
    });
  }
}
