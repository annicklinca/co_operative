class AllcoperativeModel {
  final String? co_operativename;
  final String? address;
  final String? phone;
  final String? id;

  AllcoperativeModel(
      {required this.co_operativename,
      required this.address,
      required this.phone,
      required this.id});

  factory AllcoperativeModel.fromJson(Map<String,dynamic>json) {
    return AllcoperativeModel(
        co_operativename: json['co_operativename'].toString(),
        address: json['address'].toString(),
        phone: json['phone'].toString(),
        id: json['id'].toString());
  }
}

List<AllcoperativeModel> coperativeFromJson(List register) =>
    List<AllcoperativeModel>.from(
        register.map((event) => AllcoperativeModel.fromJson(event)));
