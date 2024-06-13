import 'package:flutter/material.dart';
import 'package:learning_flutter/models/provider/exam.dart';
import 'package:learning_flutter/widgets/buttons/back.dart';
import 'package:learning_flutter/widgets/buttons/notifications.dart';
import 'package:learning_flutter/widgets/cards/exam_details_doctor_info_card.dart';
import 'package:learning_flutter/widgets/cards/exam_details_patient_info_card.dart';
import 'package:learning_flutter/widgets/cards/exam_details_results_info_card.dart';
import 'package:learning_flutter/widgets/texts/exam_details_header_info.dart';
import 'package:learning_flutter/widgets/texts/exam_details_title_bar.dart';
import 'package:provider/provider.dart';

class ExamDetailsScreen extends StatelessWidget {
  const ExamDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [NotificationsButton()],
        leading: const CustomBackButton(),
        title: const ExamDetailsTitleBar(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: Consumer<ExamModel>(
              builder: (_, examModel, __) => Column(
                children: [
                  ExamDetailsHeaderInfo(exam: examModel.getExam()),
                  ExamDetailsPatientInfoCard(patient: examModel.getPatient()),
                  ExamDetailsDoctorInfoCard(doctor: examModel.getDoctor()),
                  ExamDetailsResultsInfoCard(exam: examModel.getExam()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
