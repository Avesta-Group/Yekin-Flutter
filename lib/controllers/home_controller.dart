import 'package:get/get.dart';

class HomeController extends GetxController {

  RxBool isShowList = false.obs;

 final List<String> imgLinks =  ['https://images.unsplash.com/photo-1714165237014-a4e59036cb98?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                  'https://images.unsplash.com/photo-1689059067322-6ca5e4face4c?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'];


final List<String> partTitles = ["history","library","election","history","library","election","history","library","election"];
final List<String> partImgLinks = ["assets/images/history_img.png","assets/images/library_img.png","assets/images/election_img.png","assets/images/history_img.png","assets/images/library_img.png","assets/images/election_img.png","assets/images/history_img.png","assets/images/library_img.png","assets/images/election_img.png"];

 void switchShow() {
    isShowList.value = !isShowList.value;
  }

}