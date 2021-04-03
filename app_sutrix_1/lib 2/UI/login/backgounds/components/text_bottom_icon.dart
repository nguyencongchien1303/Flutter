import 'package:flutter/material.dart';

import '../../../../constants.dart';

class TextBottomIcon extends StatelessWidget {
  const TextBottomIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        "SAVING MONEY",
        style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(fontWeight: FontWeight.w700, color: Colors.white),
      ),
    );
  }
}
