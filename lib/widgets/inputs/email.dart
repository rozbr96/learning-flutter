import 'package:learning_flutter/widgets/inputs/base.dart';

class EmailInput extends BaseInput {
  const EmailInput({super.key})
      : super(
          label: 'Email',
          hintText: 'Insert your mail address',
        );
}
