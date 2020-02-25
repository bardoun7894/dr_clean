class User {
  int userId;
  String firstName;
  String lastName;
  String email;
  String apiToken;

  User({this.userId, this.firstName, this.lastName, this.email, this.apiToken});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    apiToken = json['api_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['api_token'] = this.apiToken;
    return data;
  }
}