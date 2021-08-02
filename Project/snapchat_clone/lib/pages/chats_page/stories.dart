import 'package:flutter/material.dart';
import 'package:snapchat_clone/data/stories_page/stories_data.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = new TextEditingController();
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                style: TextStyle(
                    color: Theme.of(context).textTheme.headline1.color),
                cursorColor: Color(0xFF000000),
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF8E8E93),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Color(0xFF8E8E93)),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).backgroundColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 33,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 75,
                      child: Align(
                        child: Text(
                          'Your Story',
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).textTheme.headline1.color,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: List.generate(
                    stories_data.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              child: Stack(
                                children: [
                                  stories_data[index].detail.length > 0
                                      ? UnicornOutlineButton(
                                          strokeWidth: 2,
                                          radius: 30,
                                          gradient: LinearGradient(colors: [
                                            Color(0xFF7BD5F5),
                                            Color(0xFF787FF6),
                                            Color(0xFF4ADEDE),
                                          ]),
                                          child: Container(
                                            width: 52,
                                            height: 52,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    stories_data[index]
                                                        .detail[0]
                                                        .imageUrl),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {},
                                        )
                                      : Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      stories_data[index]
                                                          .avatar),
                                                  fit: BoxFit.cover)),
                                        ),
                                  // stories_data[index].isOnline
                                  //     ? Positioned(
                                  //         top: 38,
                                  //         left: 42,
                                  //         child: Container(
                                  //           width: 20,
                                  //           height: 20,
                                  //           decoration: BoxDecoration(
                                  //               color: Color(0xFF5AD439),
                                  //               shape: BoxShape.circle,
                                  //               border: Border.all(
                                  //                   color: Theme.of(context)
                                  //                       .scaffoldBackgroundColor,
                                  //                   width: 3)),
                                  //         ),
                                  //       )
                                  //     : Container()
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 65,
                              child: Align(
                                child: Text(
                                  stories_data[index].name,
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .headline1
                                        .color,
                                    fontSize: 12,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UnicornOutlineButton extends StatelessWidget {
  final _GradientPainter _painter;
  final Widget _child;
  final VoidCallback _callback;
  final double _radius;

  UnicornOutlineButton({
    @required double strokeWidth,
    @required double radius,
    @required Gradient gradient,
    @required Widget child,
    @required VoidCallback onPressed,
  })  : this._painter = _GradientPainter(
            strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        this._child = child,
        this._callback = onPressed,
        this._radius = radius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _callback,
        child: InkWell(
          borderRadius: BorderRadius.circular(_radius),
          onTap: _callback,
          child: Container(
            constraints: BoxConstraints(minWidth: 80, minHeight: 80),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter(
      {@required double strokeWidth,
      @required double radius,
      @required Gradient gradient})
      : this.strokeWidth = strokeWidth,
        this.radius = radius,
        this.gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    Rect outerRect = Offset.zero & size;
    var outerRRect =
        RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth,
        size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(
        innerRect, Radius.circular(radius - strokeWidth));

    _paint.shader = gradient.createShader(outerRect);

    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
