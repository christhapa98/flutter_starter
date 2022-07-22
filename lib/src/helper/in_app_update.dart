import 'dart:developer';

import 'package:in_app_update/in_app_update.dart';

class AppUpdateService {
  Future<void> checkForUpdate() async {
    try {
      InAppUpdate.checkForUpdate().then((AppUpdateInfo info) {
        if (info.updateAvailability == UpdateAvailability.updateAvailable) {
          InAppUpdate.performImmediateUpdate().catchError((e) {
            log(e.toString());
          });
        } else {
          log('Already on Latest');
        }
      }).catchError((e) {
        log(e.toString());
      });
    } catch (e) {
      log(e.toString());
    }
  }
}
