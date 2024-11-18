import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabScreen extends StatelessWidget {
  final String tag;

  TabScreen({required this.tag});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TabController>(tag: tag);

    return ListView.builder(
      controller: controller.scrollController,
      itemCount: 50,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Screen 1 Item $index from $tag'),
        );
      },
    );
  }
}

class TabController extends GetxController {
  late ScrollController scrollController;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
