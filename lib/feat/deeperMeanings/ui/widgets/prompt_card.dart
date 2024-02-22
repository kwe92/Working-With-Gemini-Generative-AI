import 'package:flutter/material.dart';
import 'package:working_with_gemini/feat/meanings/ui/meanings_view.dart';
import 'package:working_with_gemini/route_navigation.dart';

class PromptCard extends StatelessWidget {
  final String promptText;
  const PromptCard({required this.promptText, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => await RouteNavigation.push(
        context,
        MeaningsView(
          promptText: promptText,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          image: DecorationImage(
            image: Image.asset("/Users/kwe/WorkingWithGemini/working_with_gemini/assets/compassion.avif").image,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6, bottom: 8, right: 6),
              child: Text(
                promptText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
