- navigation (get to)

class Routes {
 static const login = '/login';
 static const home = '/home';
}

const pages = [
  GetPage(
    name: Routes.login,
    page: () => LoginPage(),
    binding: BindingsBuilder(
      () => Get.put(LoginController()),
    ),
  ),
  GetPage...
  GetPage...
  GetPage...
];

GetMaterial(
  pages:[], // array of pages
  initPage: Routes.login, // string
)

debugConsole

appLife

RxType


Description:
You are tasked with creating a more advanced Flutter app using the GetX library.
The app should have the following features:
A counter displayed on the screen.
A button to increment the counter.
A button to reset the counter.
A button to navigate to a new screen.
On the new screen, display the current counter value and allow the user to decrement the counter.

first page -> counter, btn_inc, btn_reset, btn_nav
second page -> counter, btn_dec, btn_back

if the app is inactive state, counter must be decresed by 1
