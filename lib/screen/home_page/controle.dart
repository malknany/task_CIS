import 'package:task_cis_c/screen/home_page/modle.dart';

class HomePageControl {
  List image = [
    'assets/image/3.jpg',
    'assets/image/4.jpg',
    'assets/image/5.jpg',
    'assets/image/1.jpg',
    'assets/image/2.jpg',
  ];
  List category = ['Chairs', 'Sofa', 'Tables'];
  List<HomePageModel> item = [
    HomePageModel(
        image: 'assets/image/1.jpg',
        title: 'Green Chair',
        price: '65',
        reat: '4.9'),
    HomePageModel(
        image: 'assets/image/2.jpg',
        title: 'Blue Chair',
        price: '30',
        reat: '3.8'),
  ];
}
