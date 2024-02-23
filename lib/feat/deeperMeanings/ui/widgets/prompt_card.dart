import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PromptCard extends StatelessWidget {
  final String promptText;
  final VoidCallback onTap;
  const PromptCard({required this.onTap, required this.promptText, super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: refactor with svg image
    final svgImage = SvgPicture.asset("/Users/kwe/WorkingWithGemini/working_with_gemini/assets/lotus-flower-bloom.svg");
    return GestureDetector(
      onTap: onTap,
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
                  // color: Colors.purple,
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
