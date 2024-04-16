import 'package:flutter/material.dart';
import 'package:my_puk_application/models/language_model.dart';

import '../controllers/utilsControllers/language_controller.dart';
import 'app_constants.dart';

class LanguageWidget extends StatelessWidget {
final LanguageModel languageModel;
final LocalizationController localizationController;
final int index;
const LanguageWidget({super.key, required this.languageModel, required this.localizationController,
required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        localizationController.setLanguage(Locale(
          AppConstants.languages[index].languageCode,
          AppConstants.languages[index].countryCode,
        ));
        localizationController.setSelectedIndex(index);
      },
      child: Container(
        padding: const EdgeInsets.all(7),
        child:
            Center(child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(languageModel.imageUrl, style: const TextStyle(fontSize: 20)),
                    const SizedBox(width: 8,),
                    Text(languageModel.languageName, style: TextStyle(fontSize: 20,
                        color:  localizationController.selectedIndex == index ? Colors.blue : Colors.black),),
                  ],
                ),
              ],
            ),),


      )
    );
  }
}