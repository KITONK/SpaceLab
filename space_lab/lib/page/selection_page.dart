import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_lab/widget/figure_widget.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({Key? key, this.count, this.time}) : super(key: key);
  final int? count;
  final DateTime? time;

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
          'Аудиозаписи',
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.ellipsis,
              size: 30,
            ),
          ),
        ],
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
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Все в одном месте',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    '$count аудио',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '$time часов',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xfff6f6f6),
                      fixedSize: Size(150, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xff8c84e2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.play_arrow_rounded),
                        ),
                        Text(
                          'Запустить все',
                          style: TextStyle(
                            color: Color(0xff8c84e2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xfff6f6f6).withOpacity(0.5),
                      // fixedSize: Size(150, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Icon(
                      CupertinoIcons.repeat,
                      color: Color(0xfff6f6f6).withOpacity(0.5),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
