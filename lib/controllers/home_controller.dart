import 'package:get/get.dart';

class HomeController extends GetxController {
  //obs là một biến đặc biệt của GetX, nó giúp cập nhật giao diện mỗi khi giá trị của biến thay đổi, với việc gắn obs vào biến, nó sẽ tự động cập nhật giao diện mỗi khi giá trị của biến thay đổi
  var currentNavIndex = 0.obs; //  dòng này tạo biến để lưu index của bottom navigation bar khi chuyển màn hình 
  
}
