class AllproductionModel {
  final String? cooperative_name;
  final String? address;
  final String? quantity;
  final String? id;
  final String? date;

  AllproductionModel(
      {required this.cooperative_name,
      required this.address,
      required this.quantity,
      required this.date,
      required this.id});

  factory AllproductionModel.fromJson(Map<String,dynamic>json) {
    return AllproductionModel(
        cooperative_name: json['cooperative_name'].toString(),
        address: json['address'].toString(),
        quantity: json['quantity'].toString(),
        date: json['date'].toString(),
        id: json['id'].toString());
  }
}

List<AllproductionModel> productionFromJson(List production) =>
    List<AllproductionModel>.from(
        production.map((event) => AllproductionModel.fromJson(event)));
