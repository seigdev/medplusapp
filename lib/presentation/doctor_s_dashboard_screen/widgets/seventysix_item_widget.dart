import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class SeventysixItemWidget extends StatelessWidget {
  const SeventysixItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      "8:00am",
      style: theme.textTheme.bodyMedium,
    );
  }
}
