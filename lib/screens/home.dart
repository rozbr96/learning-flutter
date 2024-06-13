import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/buttons/back.dart';
import 'package:learning_flutter/widgets/buttons/language_toggle.dart';
import 'package:learning_flutter/widgets/buttons/notifications.dart';
import 'package:learning_flutter/widgets/inputs/search.dart';
import 'package:learning_flutter/widgets/listing/exams.dart';
import 'package:learning_flutter/widgets/texts/home_title_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [LanguageToggleButton(), NotificationsButton()],
        leading: const CustomBackButton(),
        title: const HomeTitleBar(),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SearchInput(),
          ),
          Expanded(child: ExamsListing()),
        ],
      ),
    );
  }
}
