class User {
  final String name;
  final int age;

  User({required this.name, required this.age});

  // 从 JSON 转换为 User 对象
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] ?? '',
      age: json['age'] ?? 0,
    );
  }

  // 将 User 对象转换为 JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}