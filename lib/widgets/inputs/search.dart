import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/inputs/base.dart';

class _SearchInputState extends BaseInputState {
  _SearchInputState() : super(label: 'Search...', hintText: 'Search...');
}

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<StatefulWidget> createState() => _SearchInputState();
}
