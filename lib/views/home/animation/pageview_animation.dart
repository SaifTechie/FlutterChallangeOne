import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/material.dart';

class MyTransformer extends PageTransformer {
  MyTransformer() : super(reverse: false);

  @override
  Widget transform(Widget child, TransformInfo info) {
    double? position = info.position;

    if (position! <= 0) {
      const double MIN_SCALE = 0.75;
      double scaleFactor = MIN_SCALE + (1 - MIN_SCALE) * (1 + position);

      return new Opacity(
        opacity: 1.0 + position,
        child: new Transform.translate(
          offset: new Offset(0.0, -position * info.height!.toInt()),
          child: new Transform.scale(
            scale: scaleFactor,
            child: child,
          ),
        ),
      );
    } else if (position <= 1) {
      return new Opacity(
        opacity: 1.0,
        child: new Transform.translate(
          offset: new Offset(0.0, 0.0),
          child: new Transform.scale(
            scale: 1.0,
            child: child,
          ),
        ),
      );
    }

    return child;
  }
}
