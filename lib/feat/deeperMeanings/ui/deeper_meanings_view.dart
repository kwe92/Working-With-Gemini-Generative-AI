import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:working_with_gemini/feat/deeperMeanings/ui/deeper_meanings_view_model.dart';
import 'package:working_with_gemini/feat/deeperMeanings/ui/widgets/prompt_card.dart';

class DeeperMeaningsView extends StatelessWidget {
  const DeeperMeaningsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => DeeperMeaningsViewModel(),
        builder: (context, child) {
          final model = context.watch<DeeperMeaningsViewModel>();
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.builder(
              itemCount: model.prompts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: (5 / 8),
              ),
              itemBuilder: (context, index) => PromptCard(
                promptText: model.prompts[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
