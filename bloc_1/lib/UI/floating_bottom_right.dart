import 'package:bloc_1/Bloc/remote_bloc.dart';
import 'package:bloc_1/Bloc/remote_event.dart';
import 'package:flutter/material.dart';

class FloatingBottomRight extends StatefulWidget {
  final RemoteBloc bloc;
  FloatingBottomRight({Key key, @required this.bloc}) : super(key: key);

  @override
  _FloatingBottomRightState createState() => _FloatingBottomRightState();
}

class _FloatingBottomRightState extends State<FloatingBottomRight> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () => widget.bloc.eventController.sink
              .add(IncrementEvent(5)), // add event <=== new
          child: Icon(Icons.volume_up),
        ),
        FloatingActionButton(
          onPressed: () => widget.bloc.eventController.sink
              .add(DecrementEvent(10)), // add event <=== new
          child: Icon(Icons.volume_down),
        ),
        FloatingActionButton(
          onPressed: () => widget.bloc.eventController.sink
              .add(MuteEvent()), // add event <=== new
          child: Icon(Icons.volume_mute),
        )
      ],
    );
  }
}
