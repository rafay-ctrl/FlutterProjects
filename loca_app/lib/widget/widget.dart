import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loca_app/l10n/I10n.dart';
import 'package:provider/provider.dart';

import '../provider/localprovider.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Locale = Localizations.localeOf(context);
    final flag = L10n.getFlag(Locale.languageCode);
    return Center(
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 72,
        child: Text(
          flag,
          style: TextStyle(fontSize: 80),
        ),
      ),
    );
  }
}

class LanguagePicker extends StatelessWidget {
  const LanguagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale ?? Locale('en');
    return DropdownButtonHideUnderline(
        child: DropdownButton(
      icon: Container(
        width: 12,
        color: Colors.transparent,
        child: Icon(Icons.language),
      ),
      items: L10n.all.map((locale) {
        final flag = L10n.getFlag(locale.languageCode);
        return DropdownMenuItem(
          child: Center(
            child: Text(
              flag,
              style: TextStyle(fontSize: 32),
            ),
          ),
          value: locale,
          onTap: () {
            final provider =
                Provider.of<LocaleProvider>(context, listen: false);
            provider.setLocale(locale);
          },
        );
      }).toList(),
      onChanged: (_) {},
    ));
  }
}
