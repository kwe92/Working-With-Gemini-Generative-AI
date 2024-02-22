import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:working_with_gemini/extended_change_notifier.dart';

final GeminiModelService geminiModelService = GeminiModelService();

class GeminiModelService extends ExtendedChangeNotifier {
  late GenerativeModel _generativeModel;

  String? promtTextResponse;

  GeminiModelService() {
    initialize();
  }

  void initialize() {
    _generativeModel = getGenerativeModel();
  }

  Future<void> generateContent(Iterable<Content> content) async {
    setBusy(true);

    final GenerateContentResponse response = await _generativeModel.generateContent(content);

    debugPrint(response.text);

    setBusy(false);

    promtTextResponse = response.text;

    notifyListeners();
  }

  GenerativeModel getGenerativeModel([String? model]) => GenerativeModel(
        model: model ?? "gemini-pro",
        apiKey: getGeminiApiKey(),
      );

  String getGeminiApiKey() {
    final geminiApiKey = handleGeminiApiKeyException();

    return geminiApiKey ?? '';
  }

  String? handleGeminiApiKeyException() {
    const errorMsg = "GEMINI_API_KEY not found, please ensure environment variables are loaded properly before the application starts.";

    try {
      final geminiApiKey = dotenv.env["GEMINI_API_KEY"];

      if (geminiApiKey == null) {
        debugPrint(errorMsg);
        return null;
      }

      return geminiApiKey;
    } catch (e) {
      debugPrint("exception in getGeminiApiKey: $errorMsg");
      return null;
    }
  }
}
