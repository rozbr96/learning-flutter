import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:learning_flutter/models/provider/exam.dart';
import 'package:learning_flutter/models/provider/exams.dart';
import 'package:learning_flutter/models/provider/locale.dart';
import 'package:learning_flutter/models/provider/login.dart';
import 'package:learning_flutter/screens/login.dart';
import 'package:provider/provider.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginModel>(create: (_) => LoginModel()),
        Provider<ExamsModel>(create: (_) => ExamsModel()),
        Provider<ExamModel>(create: (_) => ExamModel()),
        ChangeNotifierProvider<LocaleModel>(create: (_) => LocaleModel()),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          home: const LoginScreen(),
          locale: Locale(context.watch<LocaleModel>().getLocale()),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          supportedLocales: const [
            Locale('pt'),
            Locale('en'),
          ],
        );
      }),
    );
  }
}
