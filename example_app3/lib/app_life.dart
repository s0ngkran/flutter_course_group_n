import 'package:get/get.dart';

class AppLife extends SuperController {
  @override
  void onDetached() async {
    print('detached');
  }

  @override
  void onInactive() async {
    print('inactive');
  }

  @override
  void onPaused() async {
    print('paused');
  }

  @override
  Future<void> onResumed() async {
    print('resumed');
  }
}