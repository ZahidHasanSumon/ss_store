import 'package:flutter/material.dart';

import 'curved_edges.dart';

class SCurvedEdgesWidget extends StatelessWidget {
  const SCurvedEdgesWidget({
    super.key, this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SCustomCurvedEdges(),
      child: child,
    );
  }
}