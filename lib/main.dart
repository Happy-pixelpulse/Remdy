import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:remdy/Language_Bloc/localization_bloc.dart';
import 'package:remdy/splash/splash%20_screen1.dart';
import 'l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalizationBloc(),
      child: BlocBuilder<LocalizationBloc, LocalizationState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            supportedLocales: L10n.all,
             localizationsDelegates: AppLocalizations.localizationsDelegates,
             locale: const Locale('en'),
            home:SplashScreen(),
          );
        },
      ),
    );
  }
}