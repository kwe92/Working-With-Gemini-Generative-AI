import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:working_with_gemini/feat/meanings/ui/meanings_view_model.dart';

class MeaningsView extends StatelessWidget {
  final String promptText;
  const MeaningsView({
    required this.promptText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.primary,
        // backgroundColor: Colors.blue[200],
        backgroundColor: Colors.deepPurpleAccent[100],

        title: Text(
          promptText,
          style: const TextStyle(fontSize: 24),
        ),
      ),
      body: ChangeNotifierProvider<MeaningsViewModel>(
        create: (context) => MeaningsViewModel(promptText),
        builder: (context, _) {
          final model = context.watch<MeaningsViewModel>();

          return model.isBusy
              ? Center(
                  child: CircularProgressIndicator(
                  // color: Colors.blue[200],
                  color: Colors.deepPurpleAccent[100],
                ))
              : Center(
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(24),
                                child: Text(
                                  model.promptTextResponse ?? "",
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
