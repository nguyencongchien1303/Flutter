import 'package:flutter/material.dart';
import 'package:snapchat_clone/data/stories_page/stories_data.dart';

class CameraPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(stories_data[0].avatar),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.all(10),
              child: Opacity(
                opacity: 0.8,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Text("dsadhjgsajdgasjgdhjasghjdsagjh"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
