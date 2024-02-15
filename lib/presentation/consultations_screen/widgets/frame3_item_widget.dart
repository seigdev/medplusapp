import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class Frame3ItemWidget extends StatelessWidget {
  const Frame3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "12/12/2022",
          style: TextStyle(
            color: appTheme.gray900,
            fontSize: 14.fSize,
            fontFamily: 'Work Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.gray900.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.indigo100,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
