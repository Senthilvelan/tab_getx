import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabScreen3 extends StatelessWidget {
  final String tag;

  TabScreen3({required this.tag});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TabController3>(tag: tag);

    return ListView.builder(
      controller: controller.scrollController3,
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Screen 4 Item $index from $tag'),
        );
      },
    );
  }
}

class TabController3 extends GetxController {
  late ScrollController scrollController3;

  @override
  void onInit() {
    super.onInit();
    scrollController3 = ScrollController();
  }

  @override
  void onClose() {
    scrollController3.dispose();
    super.onClose();
  }
}
