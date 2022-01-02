import 'package:flutter/material.dart';
import 'package:space_lab/widget/figure_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff8b84e2),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Профиль',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            figureWidget(_figureText()),
          ],
        ),
      ),
    );
  }

  Widget _figureText() {
    return Column(
      children: [
        Text('Твоя частичка'),
        // Image.asset('assets/images/Home.png', width: 228, height: 228, color: Colors.black,),
      ],
    );
  }
}
