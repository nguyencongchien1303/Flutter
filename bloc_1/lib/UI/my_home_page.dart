import 'package:bloc_1/Bloc/remote_bloc.dart';
import 'package:bloc_1/Bloc/remote_state.dart';
import 'package:flutter/material.dart';

import 'floating_bottom_right.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final bloc = RemoteBloc(); // khởi tạo bloc  <=== new

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<RemoteState>(
          // sử dụng StreamBuilder để lắng nghe Stream <=== new

          stream: bloc.stateController.stream,
          // truyền stream của stateController vào để lắng nghe <=== new

          initialData: bloc.state,
          // giá trị khởi tạo chính là volume 70 hiện tại <=== new

          builder: (context, snapshot) {
            return Text(
                'Âm lượng hiện tại: ${snapshot.data.volume}'); // update UI <=== new
          },
        ),
      ),
      floatingActionButton: FloatingBottomRight(bloc: bloc),
    );
  }

  @override
  void dispose() {
    super.dispose();
    bloc.dispose(); // dispose bloc <=== new
  }
}
