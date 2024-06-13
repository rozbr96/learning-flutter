import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/widgets/inputs/base.dart';

class _SearchInputState extends BaseInputState {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    label = hintText = AppLocalizations.of(context)!.search;
  }
}

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<StatefulWidget> createState() => _SearchInputState();
}
