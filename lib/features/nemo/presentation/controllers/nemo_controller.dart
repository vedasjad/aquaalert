import 'package:aquaalert/core/models/tabs/my_tab.dart';
import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NemoController extends GetxController {
  final int initialTabIndex;
  NemoController({
    this.initialTabIndex = 0,
  });
  final Rx<int> tabIndex = 0.obs;
  late Rx<PageController> pageController;
  Rx<int> pageOffset = 6.obs;

  final RxList<MyTab> tabs = [
    MyTab(title: AppStrings.day),
    MyTab(title: AppStrings.week),
    MyTab(title: AppStrings.month),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: pageOffset.value).obs;
    tabs[initialTabIndex] = tabs[initialTabIndex].copyWith(isSelected: true);
    tabIndex.value = initialTabIndex;
  }

  void updateSelectedTabIndex(int index) {
    tabs[tabIndex.value] = tabs[tabIndex.value].copyWith(isSelected: false);
    tabIndex.value = index;
    tabs[index] = tabs[index].copyWith(isSelected: true);
    update();
  }

  void updatePageOffset(int offset) {
    pageOffset.value = offset;
    pageController.value.animateToPage(
      pageOffset.value,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
    update();
  }
}
