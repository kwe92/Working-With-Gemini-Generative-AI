import 'package:flutter/material.dart';
import 'package:working_with_gemini/feat/deeperMeanings/ui/deeper_meanings_view.dart';
import 'package:working_with_gemini/feat/shared/global_keys.dart';
import 'package:working_with_gemini/load_env_variables.dart';

void main() async {
  await loadEnvVariables();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: GlobalKeys.rootScaffoldMessengerKey,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          background: Color.fromARGB(72, 158, 158, 158),
        ),
      ),
      home: const DeeperMeaningsView(),
    );
  }
}
