class UserViewModel {
  String? name;
  String? gender;
  String? email;
  String? age;
  String? mobileNumber;
  String? imageUrl;

  UserViewModel(
      {this.name,
      this.gender,
      this.email,
      this.age,
      this.mobileNumber,
      this.imageUrl});

  UserViewModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    gender = json['gender'];
    email = json['email'];
    age = json['age'];
    mobileNumber = json['mobileNumber'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['gender'] = gender;
    data['email'] = email;
    data['age'] = age;
    data['mobileNumber'] = mobileNumber;
    data['imageUrl'] = imageUrl;
    return data;
  }
}
