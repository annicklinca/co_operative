class AllproductModel {
  final String? fish_name;
  final String? quantity;
  final String? id;
  final String? date;

  AllproductModel(
      {required this.fish_name,
      required this.quantity,
      required this.date,
      required this.id});

  factory AllproductModel.fromJson(Map<String,dynamic>json) {
    return AllproductModel(
        fish_name: json['fish_name'].toString(),
        quantity: json['quantity'].toString(),
        date: json['date'].toString(),
        id: json['id'].toString());
  }
}

List<AllproductModel> productFromJson(List product) =>
    List<AllproductModel>.from(
        product.map((event) => AllproductModel.fromJson(event)));
