import 'package:get/get.dart';
import '../tab_screen/tab_screen.dart';
import '../tab_screen/tab_screen1.dart';
import '../tab_screen/tab_screen2.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabController(), tag: 'tab1');
    Get.lazyPut(() => TabController1(), tag: 'tab2');
    Get.lazyPut(() => TabController2(), tag: 'tab3');
    Get.lazyPut(() => TabController3(), tag: 'tab4');
  }
}
