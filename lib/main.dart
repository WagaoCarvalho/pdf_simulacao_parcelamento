import 'package:flutter/material.dart';

import 'state/app_state.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollbarTheme = ScrollbarThemeData(
      thumbVisibility: MaterialStateProperty.all(true),
    );

    return MaterialApp(
      theme: ThemeData.light().copyWith(scrollbarTheme: scrollbarTheme),
      darkTheme: ThemeData.dark().copyWith(scrollbarTheme: scrollbarTheme),
      title: 'Simulação de parcelamento',
      home: const PdfApp(),
    );
  }
}