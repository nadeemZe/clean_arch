

abstract class ProductsEvents{}

class GetProductsEvent extends ProductsEvents{
  String title;
  GetProductsEvent({required this.title});
}