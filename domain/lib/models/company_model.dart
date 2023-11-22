class CompanyModel {
  final String name;
  final String catchPhrase;
  final String bs;

  const CompanyModel({
    required this.name,
    this.catchPhrase = '',
    this.bs = '',
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      name: json["name"],
      catchPhrase: json["catchPhrase"],
      bs: json["bs"],
    );
  }
}
