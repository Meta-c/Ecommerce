import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  int _index = 0;
  int get index => _index;

  void setIndex(int value) {
    _index = value;
    update();
  }
}
