import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabScreen2 extends StatelessWidget {
  final String tag;

  TabScreen2({required this.tag});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TabController2>(tag: tag);

    return ListView.builder(
      controller: controller.scrollController2,
      itemCount: 30,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Screen 3 Item $index from $tag'),
        );
      },
    );
  }
}

class TabController2 extends GetxController {
  late ScrollController scrollController2;

  @override
  void onInit() {
    super.onInit();
    scrollController2 = ScrollController();
  }

  @override
  void onClose() {
    scrollController2.dispose();
    super.onClose();
  }
}
