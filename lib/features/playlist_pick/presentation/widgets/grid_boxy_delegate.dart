import 'package:boxy/boxy.dart';
import 'package:flutter/material.dart';

class GridBoxyDelegate extends BoxyDelegate {
  final int crossAxisCount;
  final double spacing;
  final double runSpacing;

  GridBoxyDelegate({
    required this.crossAxisCount,
    required this.spacing,
    required this.runSpacing,
  });

  @override
  Size layout() {
    final widthPerItem = (constraints.maxWidth - (spacing * (crossAxisCount - 1))) / crossAxisCount;
    double y = 0;
    int i = 0;

    while (i < children.length) {
      double maxHeight = 0;
      for (int j = 0; j < crossAxisCount && i + j < children.length; j++) {
        final child = children[i + j];
        final size = child.layout(BoxConstraints.tightFor(width: widthPerItem));
        if (size.height > maxHeight) {
          maxHeight = size.height;
        }
      }

      for (int j = 0; j < crossAxisCount && i + j < children.length; j++) {
        final child = children[i + j];
        final x = (widthPerItem + spacing) * j;
        child.position(Offset(x, y));
      }

      y += maxHeight + runSpacing;
      i += crossAxisCount;
    }

    return Size(constraints.maxWidth, y - runSpacing);
  }
}
