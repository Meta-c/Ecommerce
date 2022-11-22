import 'package:get/get.dart';

import '../features/on Boarding/presentation/on_boarding_controller.dart';

void setupDependecies() {
  Get.lazyPut(() => OnBoardingController());
}
