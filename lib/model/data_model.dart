class DataModel {
  String name;
  String image;
  int price;
  int people;
  int stars;
  String description;
  String locationl;
  DataModel(
      {required this.name,
      required this.image,
      required this.price,
      required this.people,
      required this.description,
      required this.locationl,
      required this.stars});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        name: json['name'],
        image: json['image'],
        price: json['price'],
        people: json['people'],
        description: json['description'],
        locationl: json['locationl'],
        stars: json['stars']);
  }
}
