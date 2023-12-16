import 'package:get/get.dart';

import '../../data/notef.dart';

class HomeCtl extends GetxController {
  // static HomeCtl get to => Get.find();
  var name = ''.obs; // rx type
  var cnt = 1.obs;

  onInit() {
    print('init');
    Worker? x;
    // x = once(
    //   cnt,
    //   (v) {
    //     print('hello $v');
    //     cnt.value;
    //     x?.dispose();
    //     print('dispose()');
    //   },
    //   condition: () => cnt.value > 2,
    // );
    x = debounce(
      cnt,
      (v) => print('debounce $v'),
      time: 1.seconds,
    );
    print('done ever()');
    
  }

  doSomething() {

  }
}
