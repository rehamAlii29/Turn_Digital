import 'package:flutter_base/src/Core/App/app_material.dart';
import 'package:flutter_base/src/Core/Services/storage/src/storage_constants.dart';
import 'package:flutter_base/src/Super/Controllers/Resources/get/get_controller_interface.dart';

class BaseController extends GetControllerInterface {
  int _tabIndex = 0;

  int get tabIndex => _tabIndex;

  void changeTabIndex(int newIndex) {
    if (newIndex != 2) {
      _tabIndex = newIndex;
    }

    update();
  }

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
