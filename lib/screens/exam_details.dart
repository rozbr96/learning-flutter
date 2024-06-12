import 'package:flutter/material.dart';
import 'package:learning_flutter/models/provider/exam.dart';
import 'package:learning_flutter/utils/colors.dart';
import 'package:learning_flutter/widgets/buttons/back.dart';
import 'package:learning_flutter/widgets/buttons/notifications.dart';
import 'package:learning_flutter/widgets/cards/exam_details_doctor_info_card.dart';
import 'package:learning_flutter/widgets/cards/exam_details_patient_info_card.dart';
import 'package:learning_flutter/widgets/cards/exam_details_results_info_card.dart';
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
      body: Consumer<ExamModel>(
        builder: (_, examModel, __) => Center(
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          examModel.getExam().id.toString(),
                          style: const TextStyle(
                            color: primaryForegroundColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          examModel.getLab().name,
                          style: const TextStyle(
                            color: primaryBackgroundColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      examModel.getExam().formattedDate(),
                      style: const TextStyle(
                        color: primaryBackgroundColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ExamDetailsPatientInfoCard(patient: examModel.getPatient()),
                ExamDetailsDoctorInfoCard(doctor: examModel.getDoctor()),
                Expanded(
                  child: ExamDetailsResultsInfoCard(exam: examModel.getExam()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
