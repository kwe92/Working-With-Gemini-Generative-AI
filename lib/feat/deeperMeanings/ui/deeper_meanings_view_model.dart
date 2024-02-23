import 'package:working_with_gemini/feat/shared/extended_change_notifier.dart';
import 'package:working_with_gemini/app/get_prompt_data.dart';

class DeeperMeaningsViewModel extends ExtendedChangeNotifier {
  bool _isVisible = true;

  List<String> _prompts = [];

  bool get isVisible => _isVisible;

  List<String> get prompts => _prompts;

  DeeperMeaningsViewModel() {
    _prompts = getShuffledPrompts();
  }

  void setVisibility(bool isVisible) {
    _isVisible = isVisible;
    notifyListeners();
  }
}
