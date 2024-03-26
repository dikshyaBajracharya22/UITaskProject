import 'package:uitask/constants/images.dart';

class CategoryModel {
  final String imageBanners;
  final String title;
 CategoryModel(
      {required this.imageBanners,
      required this.title,
      });
}

List<CategoryModel> categoryModel() => [
      CategoryModel(
          imageBanners: car, title: 'RESERVATION'),
      CategoryModel(
          imageBanners: airport, title: 'AIRPORT SERVICES'),
      CategoryModel(
          imageBanners: tourPackage, title: 'TOUR PACKAGE'),
      CategoryModel(
          imageBanners: go, title: 'COMING SOON'),
    ];
