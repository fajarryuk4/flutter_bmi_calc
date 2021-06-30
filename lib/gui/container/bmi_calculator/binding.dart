import 'package:get/get.dart';

import 'logic.dart';

class BMICalculatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BMICalculatorLogic());
  }
}
