import "dart:core";
import "package:ps_store/models/product_model.dart";
import "package:ps_store/data/products_data.dart";

class ProductsState {
  final ProductModel product1 = ProductModel.fromMap(productsJson[0]);
  final ProductModel product2 = ProductModel.fromMap(productsJson[1]);
  final ProductModel product3 = ProductModel.fromMap(productsJson[2]);
  final ProductModel product4 = ProductModel.fromMap(productsJson[3]);
  List<ProductModel> get categoryPS5Controls => [product1, product2, product3, product4];
  
  // final ProductModel product4 = ProductModel.fromMap(productsJson[4]);
  // final ProductModel product5 = ProductModel.fromMap(productsJson[5]);
  // final ProductModel product6 = ProductModel.fromMap(productsJson[6]);
  // final ProductModel product7 = ProductModel.fromMap(productsJson[7]);
  // List<ProductModel> get categoryPS5Consoles => [product4, product5, product6, product7];
}

class CategoryProducts {
  String title;
  List<ProductModel> items;
  CategoryProducts({this.title, this.items});
}

final categoriesProducts = [
  CategoryProducts(
    title: "PS5 Controls",
    items: ProductsState().categoryPS5Controls,
  ),
  // CategoryProducts(
  //   title: "PS5 Consoles",
  //   items: ProductsState().categoryPS5Consoles,
  // ),
];