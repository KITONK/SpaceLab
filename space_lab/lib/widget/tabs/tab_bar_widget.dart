import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_lab/widget/tabs/tab_widget.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
    this.tabController,
    this.currentIndex,
  }) : super(key: key);

  final TabController ? tabController;
  final int ? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TabBar(
        controller: tabController,
        indicatorColor: Colors.transparent,
        tabs: [
          TabWidget(
            currentIndex: currentIndex,
            name: "assets/images/Home.png",
            index: 0,
            text: 'Главная',
          ),
          TabWidget(
            currentIndex: currentIndex,
            name: "assets/images/Category.png",
            index: 1,
            text: 'Подборки',
          ),
          TabWidget(
            currentIndex: currentIndex,
            name: "assets/images/Voice.png",
            index: 2,
            text: 'Запись',
          ),
          TabWidget(
            currentIndex: currentIndex,
            name: "assets/images/Paper.png",
            index: 3,
            text: 'Аудиозаписи',
          ),
          TabWidget(
            currentIndex: currentIndex,
            name: "assets/images/Profile.png",
            index: 4,
            text: 'Профиль',
          ),
        ],
      ),
    );
  }
}
