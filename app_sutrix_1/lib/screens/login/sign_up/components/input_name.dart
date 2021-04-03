import 'package:app_sutrix_1/components/rounded_input_field.dart';
import 'package:app_sutrix_1/constants.dart';
import 'package:flutter/material.dart';

class NameNumber extends StatelessWidget {
  final bool dark;
  final nameController;
  const NameNumber({
    Key key,
    @required this.nameController,
    this.dark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name",
            style: TextStyle(color: dark ? kTextColor : Colors.white),
          ),
          SizedBox(height: 5),
          TextField(
            onChanged: (value) {},
            controller: nameController,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              hintText: "Enter your name",
              hintStyle: TextStyle(color: dark ? null : Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(color: Colors.red),
              ),
              // errorText: snapshot.hasError ? snapshot.error : null,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide:
                    BorderSide(color: !dark ? Colors.grey : Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
