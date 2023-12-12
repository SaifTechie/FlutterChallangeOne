import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../../../utils/colors.dart';

class StackedPagesWidget extends StatelessWidget {
  final Widget child;

  const StackedPagesWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: child,
        ),
        StoreConnector<int, int>(
          converter: (store) => store.state,
          builder: (context, pageIndex) {
            return Column(
              children: [
                if(pageIndex < 3)
                buildContainer(8, 10, Bg2),
                if(pageIndex < 2)
                buildContainer(7, 20, Bg3),
              ],
            );
          },
        ),
      ],
    );
  }

  Container buildContainer(double height, double margin, Color color) {
    return Container(
      height: height,
      margin: EdgeInsets.symmetric(horizontal: margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: color,
      ),
    );
  }
}
