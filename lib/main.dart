import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_theme/json_theme.dart';
import 'package:simponi/view/auth/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeStr = await rootBundle.loadString('assets/simponi_theme.json');
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(App(theme: theme));
}

class App extends StatelessWidget {
  final ThemeData theme;
  const App({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simponi',
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
