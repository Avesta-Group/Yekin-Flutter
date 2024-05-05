
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/controllers/bottom_nav_controller.dart';
import 'package:my_puk_application/screens/home/home.dart';
import 'package:my_puk_application/utils/app_constants.dart';



class IndexScreen extends StatelessWidget {
    IndexScreen({super.key});

    final BottomNavController navController =   Get.put<BottomNavController>(BottomNavController());

    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        leading:  Padding(
          padding:  const EdgeInsets.only(left: AppConstants.appPadding,right: AppConstants.appPadding),
          child:   Row(
            children:[
                 SizedBox(
                   child: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: SvgPicture.string(AppConstants.puk_svg_icon,
                        fit: BoxFit.contain,
                        ),
                      ),
                  ),
              
                 const SizedBox(width: 5,),

                 Text("My PUK",
                  style:  Theme.of(context).textTheme.bodyLarge,
                 ),
          ] ,),
        ) ,
        leadingWidth: Get.width / 2,

        actions: [
              Padding(
                  padding:  const EdgeInsets.only(left: AppConstants.appPadding,right: AppConstants.appPadding),
                   child: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                  ),
        ],
      ),
      body: SizedBox(
          height: Get.height,
          width: Get.width,
          child:  Obx(() =>  IndexedStack(
             index: navController.tabIndex.value,
            children:  [
               HomeScreen(),
               Center(child: Text('Forum')),
               Center(child: Text('PUK')),
               Center(child: Text('Notifications')),
               Center(child: Text('Profile'))
            ],))
      ),

      bottomNavigationBar: Obx(() => BottomNavigationBar(
              showUnselectedLabels: true,
              showSelectedLabels: true,
              type: BottomNavigationBarType.fixed,
              
              onTap: navController.changeTabIndex,
              currentIndex: navController.tabIndex.value,
        
              backgroundColor: Theme.of(context).colorScheme.background,
              unselectedItemColor: AppConstants.hint_text_color,
              selectedItemColor: Theme.of(context).primaryColor,
              unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
              selectedLabelStyle: Theme.of(context).textTheme.bodySmall,
        
              items: [
               for (int i = 0; i < navController.navbarTitles.length; i++)
               BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 15),
                    padding:  const EdgeInsets.only(bottom: 5),
                    child:SvgPicture.string(navController.navbarIcons[i],
                        color: navController.tabIndex.value == i ? Theme.of(context).primaryColor : AppConstants.hint_text_color,
                        fit: BoxFit.contain,
                        width: Get.width * 0.022,
                        height: Get.height * 0.022,
                        ),
                  ),
                  label: navController.navbarTitles[i].tr,
                ),
              ],
            ),
      ),
    );
  }
}
