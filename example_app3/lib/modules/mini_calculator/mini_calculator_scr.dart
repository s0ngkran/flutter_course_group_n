import 'package:example_app3/modules/mini_calculator/mini_calculator_ctl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/btn_widget.dart';
import 'widgets/display_widget.dart';
import 'widgets/num_widget.dart';

class MiniCalculatorScr extends StatelessWidget {
  const MiniCalculatorScr({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MiniCalculatorCtl());
    var c = Get.find<MiniCalculatorCtl>();

    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          const Text(
            'Mini Calculator',
            // size 20
            style: TextStyle(fontSize: 30),
          ),
          Obx(() {
            return Column(
              children: [
                DisplayWidget(text: c.display.value),
              ],
            );
          }),
          Wrap(
            children: <Widget>[
              // num 1, 2, 3 with inkwell
              for (String numStr in List.generate(10, (index) => index.toString()).reversed)
                //
                // BtnWidget(
                //   text: numStr,
                //   onTap: () {
                //     c.pressNum(numStr);
                //   },
                //   isNum: true,
                // ),
                NumWidget(
                    text: numStr,
                    onTap: () {
                      c.pressNum(numStr);
                    }),
            ],
          ),
          Row(
            children: <Widget>[
              // num 4, 5, 6 with inkwell
              BtnWidget(
                text: '+',
                onTap: () {
                  c.plus();
                },
              ),
              BtnWidget(
                text: '-',
                onTap: () {
                  c.minus();
                },
              ),
              BtnWidget(
                text: '=',
                onTap: () {
                  c.equal();
                },
              ),
            ],
          ),
          BtnWidget(
            text: 'C',
            onTap: () {
              c.clear();
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
