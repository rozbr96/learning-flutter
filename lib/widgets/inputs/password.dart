import 'package:learning_flutter/widgets/inputs/base.dart';

class PassworInput extends BaseInput {
  const PassworInput({super.key})
      : super(
          label: 'Password',
          hintText: 'Insert your password',
          obscureText: true,
        );
}
