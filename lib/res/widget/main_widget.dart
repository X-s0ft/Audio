import 'package:flutter/material.dart';
import 'package:radio/res/page/main_page.dart';
import 'package:radio/res/theme/theme.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: theme, home: MainPage());
  }
}
