import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabScreen1 extends StatelessWidget {
  final String tag;

  TabScreen1({required this.tag});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TabController1>(tag: tag);

    return ListView.builder(
      controller: controller.scrollController1,
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Screen 2 Item $index from $tag'),
        );
      },
    );
  }
}

class TabController1 extends GetxController {
  late ScrollController scrollController1;

  @override
  void onInit() {
    super.onInit();
    scrollController1 = ScrollController();
  }

  @override
  void onClose() {
    scrollController1.dispose();
    super.onClose();
  }
}
