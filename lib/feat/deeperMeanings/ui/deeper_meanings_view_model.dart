import 'package:working_with_gemini/feat/shared/extended_change_notifier.dart';
import 'package:working_with_gemini/app/get_prompt_data.dart';

class DeeperMeaningsViewModel extends ExtendedChangeNotifier {
  List<String> get prompts => getShuffledPrompts();
}
