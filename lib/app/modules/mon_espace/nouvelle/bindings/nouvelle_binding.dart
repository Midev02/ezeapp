import 'package:get/get.dart';

import '../controllers/nouvelle_controller.dart';

class NouvelleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NouvelleController>(
      () => NouvelleController(),
    );
  }
}
