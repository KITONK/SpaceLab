import 'package:flutter/material.dart';
import 'package:space_lab/page/main_page.dart';
import 'package:space_lab/page/profile_page.dart';
import 'package:space_lab/page/selection_page.dart';
import 'package:space_lab/widget/tabs/tab_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  TabController ? _tabController;
  int _currentIndex = 0;

  _handleTabSelection() {
    setState(() {
      _currentIndex = _tabController!.index;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);

    if(_tabController == null) {
      _tabController = TabController(length: 5, vsync: this, initialIndex: 0);
      _tabController!.addListener(_handleTabSelection);
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildHomePage();
  }

  Widget buildHomePage() {
    return Scaffold(
      bottomNavigationBar: _buildNavBar(),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: const [
                MainPage(),
                SelectionPage(),
                MainPage(),
                MainPage(),
                ProfilePage(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavBar() {
    return BottomAppBar(
      elevation: 20,
      color: Color(0xfff6f6f6),
      child: Container(
        child: TabBarWidget(
          tabController: _tabController,
          currentIndex: _currentIndex,
        ),
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

}

