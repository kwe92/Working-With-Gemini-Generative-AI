import 'package:working_with_gemini/extended_change_notifier.dart';
import 'package:working_with_gemini/get_prompt_data.dart';

class DeeperMeaningsViewModel extends ExtendedChangeNotifier {
  List<String> get prompts => getShuffledPrompts();
}
