import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/models/provider/exams.dart';
import 'package:learning_flutter/widgets/inputs/base.dart';
import 'package:provider/provider.dart';

class _SearchInputState extends BaseInputState {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    label = hintText = AppLocalizations.of(context)!.search;
  }

  @override
  void initState() {
    super.initState();

    onChanged = (value) {
      Provider.of<ExamsModel>(context, listen: false).filterExams(value);
    };
  }
}

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<StatefulWidget> createState() => _SearchInputState();
}
