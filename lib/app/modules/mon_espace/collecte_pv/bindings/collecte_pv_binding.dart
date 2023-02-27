import 'package:get/get.dart';

import '../controllers/collecte_pv_controller.dart';

class CollectePvBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CollectePvController>(
      () => CollectePvController(),
    );
  }
}
