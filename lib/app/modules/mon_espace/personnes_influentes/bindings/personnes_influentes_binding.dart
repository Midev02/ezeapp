import 'package:get/get.dart';

import '../controllers/personnes_influentes_controller.dart';

class PersonnesInfluentesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonnesInfluentesController>(
      () => PersonnesInfluentesController(),
    );
  }
}
