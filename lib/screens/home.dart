import 'package:flutter/material.dart';
import 'package:learning_flutter/models/provider/exams.dart';
import 'package:learning_flutter/widgets/buttons/back.dart';
import 'package:learning_flutter/widgets/buttons/notifications.dart';
import 'package:learning_flutter/widgets/cards/exam_brief.dart';
import 'package:learning_flutter/widgets/inputs/search.dart';
import 'package:learning_flutter/widgets/texts/home_title_bar.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [NotificationsButton()],
        leading: const CustomBackButton(),
        title: const HomeTitleBar(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SearchInput(),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: context.read<ExamsModel>().getExamsCount(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 220,
                    child: ExamBriefCard(
                      exam: context.read<ExamsModel>().getExam(index),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
