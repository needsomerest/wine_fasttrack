import 'package:flutter/material.dart';

const dioErrorMsg = 'ระบบเกิดความผิดพลาด...';
const dioNetworkErrorMsg = 'กรุณาตรวจสอบอินเตอร์เน็ต...';

enum AppSnackBarEnum { error, success, other }

class AppSnackBar {
  AppSnackBar(this.context, {this.appSnackBarEnum = AppSnackBarEnum.other});

  final BuildContext context;
  final AppSnackBarEnum appSnackBarEnum;

  showSnackBar(String msg) {
    final snackBar = SnackBar(
      backgroundColor: getBgColor(appSnackBarEnum),
      content: Text(msg),
      action: SnackBarAction(
        label: 'ปิด',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Color getBgColor(AppSnackBarEnum appSnackBarEnum) {
    switch (appSnackBarEnum) {
      case AppSnackBarEnum.error:
        return Colors.redAccent;
      // return AppColors.redEC251B;
      case AppSnackBarEnum.success:
        return Colors.green;
      // return AppColors.back000000;
      case AppSnackBarEnum.other:
        return Colors.yellow;
      // return AppColors.back000000;
    }
  }
}
