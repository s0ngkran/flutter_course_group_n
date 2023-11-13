import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwesomeWidgetScr extends StatelessWidget {
  const AwesomeWidgetScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('hello'),
      //   leading: Text('hhhh'),
      //   elevation: 10,
      //   actions: [
      //     Icon(Icons.home),
      //     Icon(Icons.abc),
      //     InkWell(
      //       onTap: () {
      //         Get.defaultDialog(
      //           title: 'hello',
      //           content: Text('hello'),
      //         );
      //       },
      //       child: Icon(Icons.access_alarm),
      //     ),
      //   ],
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(30.0),
      //   child: const Placeholder(),
      // ),

      // example for custom scroll view
      body: CustomScrollView(
        slivers: [
          // appbar
          SliverAppBar(
            title: Text('hello'),
            flexibleSpace: FlutterLogo(
              size: 200,
            ),
            floating: true,
            // pinned: true,
            snap: true,
            stretch: true,
            expandedHeight: 300,
          ),
          // 100 list tile items; scrollable
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: index % 2 == 0 ? Colors.green : Colors.red,
                  child: Text('list item $index'),
                );
              },
              childCount: 20,
            ),
          ),

          SliverAppBar(
            title: Text('hello2'),
            floating: true,
            pinned: true,
            snap: true,
          ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         color: index % 2 == 0 ? Colors.green : Colors.red,
          //         child: Text('list item $index'),
          //       );
          //     },
          //     childCount: 53,
          //   ),
          // ),

          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: Get.height > 300 ? 200.0 : 100.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
