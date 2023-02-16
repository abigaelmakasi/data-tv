import 'package:get/get.dart';

List<GetPage<dynamic>> getPages() {
  return [
    GetPage(
      name: '/',
      page: () => const SizedBox(),
      transition: Transition.cupertino,
    ),
  ];
}
