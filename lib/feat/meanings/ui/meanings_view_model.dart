import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:working_with_gemini/feat/shared/extended_change_notifier.dart';
import 'package:working_with_gemini/feat/shared/services/toast_service.dart';
import 'package:working_with_gemini/feat/shared/services/gemini_model_service.dart';

class MeaningsViewModel extends ExtendedChangeNotifier {
  String _promptText;

  bool _disposed = false;

  String? get promptTextResponse => geminiModelService.promptTextResponse;

  List<Content> get _content => [Content.text("What is ${_promptText.toLowerCase()}?")];

  factory MeaningsViewModel(String promptText) {
    final MeaningsViewModel model = MeaningsViewModel._initialize(promptText);
    return model;
  }

  MeaningsViewModel._initialize(this._promptText) {
    generateContent();
  }

  Future<void> generateContent() async {
    setBusy(true);
    var err = await geminiModelService.generateContent(_content);
    setBusy(false);

    if (err != null) {
      await ToastService.showSnackBar(err);
    }
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }
}

// TODO: notes on polymorphically changing dispose and notifyListeners when a really long asynchronous operation is running and the user navigates away from the view being loaded

