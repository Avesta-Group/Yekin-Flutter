import 'package:get/get.dart';
import 'package:my_puk_application/utils/app_constants.dart';

class BottomNavController extends GetxController {
  var tabIndex = 0.obs;

  
 final List<String> navbarTitles =  ['Home','Forum','PUK','Notifications','Profile'];
final List<String> navbarIcons =  [AppConstants.home_svg_icon,AppConstants.forum_svg_icon,AppConstants.id_card_svg_icon,AppConstants.notifications_svg_icon,AppConstants.profile_svg_icon];

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}