import 'package:get/get.dart';
import 'package:megamall_project/consts/consts.dart';
import 'package:megamall_project/controllers/home_controller.dart';
import 'package:megamall_project/views/cart_screen/cart_screen.dart';
import 'package:megamall_project/views/category_screen/category_screen.dart';
import 'package:megamall_project/views/home_screen/home_screen.dart';
import 'package:megamall_project/views/profile_screen/profle_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // init home controller
    var homeController = Get.put(HomeController()); 

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account),
    ];

    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(child: navBody[homeController.currentNavIndex.value])), // dòng này để hiển thị màn hình tương ứng với index của currentNavIndex 
          // với việc sử dụng navBody[homeController.currentNavIndex.value] thì màn hình sẽ thay đổi theo giá trị của currentNavIndex 
        ],
      ),
      bottomNavigationBar: Obx(() => 
         BottomNavigationBar(
          currentIndex: homeController.currentNavIndex.value, // dòng này để lấy giá trị của currentNavIndex
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbarItem,
          onTap: (value){
            homeController.currentNavIndex.value = value; // dòng này để thay đổi giá trị của currentNavIndex
          },
        ),
      ),
    );
  }
}
