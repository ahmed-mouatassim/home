import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home/screens/tasks.dart';
import 'package:iconsax/iconsax.dart';

import 'screens/project_page.dart';  


// إضافة وحدة التحكم في التنقل
class NavigationController extends GetxController {
 final Rx<int> selectedIndex = 0.obs;
  
  final screens = [
    Container(child: Center(child: Text("data"),),),
    TaskCard(),
    ExploreScreen(),
    ProjectScreen(),

  ];
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   final controller = Get.put(NavigationController());
  @override
  Widget build(BuildContext context) {
   final darkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
   
 
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      
      bottomNavigationBar: Obx(
       () =>
      CurvedNavigationBar(
        backgroundColor: Colors.grey.shade200,
        animationDuration: const Duration(milliseconds: 250), // تسريع الانتقال
        animationCurve: Curves.easeInOut, // جعل الحركة أكثر سلاسة
        items: const <Widget>[
          Icon(Icons.task),
          Icon(Icons.business_center),
        ],
        onTap: (index) {
          // Handle button tap
        },
      ),
      // bottomNavigationBar: Obx(
      //   () => NavigationBar(
      //     height: 80,
      //     elevation: 0,
      //     selectedIndex: controller.selectedIndex.value,
      //     onDestinationSelected: (index) => controller.selectedIndex.value = index,
      //     backgroundColor: darkMode ? Colors.black : Colors.white,
      //     indicatorColor: (darkMode ? Colors.white : Colors.black)
      //         .withOpacity(0.1),
      //     destinations: const [
      //       NavigationDestination(
      //         icon: Icon(Iconsax.home),
      //         label: 'الرئيسية',
      //       ),
      //       NavigationDestination(
      //         icon: Icon(Iconsax.shop),
      //         label: 'المتجر',
      //       ),
      //       NavigationDestination(
      //         icon: Icon(Iconsax.heart),
      //         label: 'المفضلة',
      //       ),
      //       NavigationDestination(
      //         icon: Icon(Iconsax.user),
      //         label: 'الملف',
      //       ),
      //     ],
      //   ),
      // ),
    ),
    );
      
  }


  }
  
  class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

    @override
    Widget build(BuildContext context) {
      return Center(
        child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.person, color: Colors.deepPurpleAccent),
                    tooltip: 'Open shopping cart',
                    onPressed: () {
                      // handle the press
                    },
                  ),
                ),
      );
    }
}

