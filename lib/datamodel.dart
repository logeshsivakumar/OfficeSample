class User {
  late final String name;
  late final int year;

  User.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    year = json["year"];
  }
}
