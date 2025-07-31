import 'package:flutter/material.dart';
import 'package:wordly/src/home.dart';
import 'package:wordly/theme/dark_theme.dart';
import 'package:wordly/theme/light_theme.dart';
import 'package:wordly/theme/theme_preference.dart';

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.system);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  themeNotifier.value = await ThemePreference.getTheme();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (context, mode, _) {
        return MaterialApp(
          title: 'Wordly',
          themeMode: mode,
          theme: lightTheme,
          darkTheme: darkTheme,
          home: const Home(),
        );
      },
    );
  }
}
