import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PromptCard extends StatelessWidget {
  final String promptText;
  final VoidCallback onTap;
  const PromptCard({required this.onTap, required this.promptText, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background.withOpacity(0.20),
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  offset: Offset(0, 2),
                  spreadRadius: 1,
                  blurRadius: 3,
                ),
              ],
            ),
            child: SvgPicture.asset(
              "/Users/kwe/WorkingWithGemini/working_with_gemini/assets/lotus-flower-bloom.svg",
              // color: Colors.deepOrange[200],
              // color: Colors.deepPurple[200],
              // color: Colors.deepPurple[300],
              color: Colors.deepPurpleAccent[100],
              // color: Colors.pink[100],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6, bottom: 16, right: 6),
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
        ],
      ),
    );
  }
}


//  Container(
//         decoration: BoxDecoration(
//           borderRadius: const BorderRadius.all(
//             Radius.circular(16),
//           ),
//           image: DecorationImage(
//             image: Image.asset("/Users/kwe/WorkingWithGemini/working_with_gemini/assets/compassion.avif").image,
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 6, bottom: 8, right: 6),
//               child: Text(
//                 promptText,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   // color: Colors.purple,
//                   fontSize: 18,
//                   fontWeight: FontWeight.w800,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),