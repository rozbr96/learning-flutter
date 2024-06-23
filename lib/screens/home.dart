import 'package:flutter/material.dart';
import 'package:learning_flutter/models/provider/exams.dart';
import 'package:learning_flutter/utils/api.dart';
import 'package:learning_flutter/widgets/buttons/back.dart';
import 'package:learning_flutter/widgets/buttons/language_toggle.dart';
import 'package:learning_flutter/widgets/buttons/notifications.dart';
import 'package:learning_flutter/widgets/inputs/search.dart';
import 'package:learning_flutter/widgets/listing/exams.dart';
import 'package:learning_flutter/widgets/texts/home_title_bar.dart';
import 'package:provider/provider.dart';

class _HomeScreen extends StatelessWidget {
  const _HomeScreen();

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

class _HomeScreenState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) => const _HomeScreen();

  @override
  void initState() {
    super.initState();

    API.getInstance().listExams().then((exams) {
      context.read<ExamsModel>().setExams(exams);
    });
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}
