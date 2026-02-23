class MyDataModel {
  final String id;
  final String name;
  final String phone;
  final String message;
  final String email;
  final String image;

  MyDataModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.message,
    this.image =
        'https://media.istockphoto.com/id/1553217327/vector/user-profile-icon-avatar-person-sign-profile-picture-portrait-symbol-easily-editable-line.jpg?s=170667a&w=0&k=20&c=xUuHLFaa94WIFdV-XBgxX9SSsaJJgGQhE1Tmevqrytg=',
  });
  factory MyDataModel.fromJson(Map<String, dynamic> json) {
    return MyDataModel(
      id: json['id'],
      name: json['name'],
      email: json["email"],
      phone: json["phone"],
      message: json["message"],
      image : 'https://media.istockphoto.com/id/1553217327/vector/user-profile-icon-avatar-person-sign-profile-picture-portrait-symbol-easily-editable-line.jpg?s=170667a&w=0&k=20&c=xUuHLFaa94WIFdV-XBgxX9SSsaJJgGQhE1Tmevqrytg='
    );
  }
}
