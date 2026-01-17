import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'my_app.dart';
void main() {
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
      const ProviderScope(child: MyApp())
  );
}
