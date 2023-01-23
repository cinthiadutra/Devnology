import 'package:devnology_app/controllers/regra_controller.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    {
      Get.put(RegraController());
    }
  }
}
