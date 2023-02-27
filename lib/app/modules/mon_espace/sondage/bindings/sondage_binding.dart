import 'package:get/get.dart';

import '../controllers/sondage_controller.dart';

class SondageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SondageController>(
      () => SondageController(),
    );
  }
}
