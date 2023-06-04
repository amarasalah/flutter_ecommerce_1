import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": "الرجاء إختيار اللغة",
          "2": "العربية ",
          "3": "الإنجليزية",
          "4": "الفرنسية",
        },
        "en": {
          "1": "Choose Your Language",
          "2": "Arabic",
          "3": "English",
          "4": "French",
        },
        "fr": {
          "1": "Choisissez votre langue",
          "2": "Arabe",
          "3": "Anglais",
          "4": "Francais",
        },
      };
}
