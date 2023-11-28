import 'package:flutter/material.dart';
import 'package:loca_app/Screens/Homescreen/homeViewModel.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../widget/widget.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
              title: const Text("Localization App"),
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              actions: [
                LanguagePicker(),
              ]),
          body: Center(
            child: Column(
              children: [
                LanguageWidget(),
                Text(AppLocalizations.of(context)!.helloWorld),
              ],
            ),
          ),
        );
      },
    );
  }
}
