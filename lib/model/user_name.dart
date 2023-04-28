class UserName {
  final String title, first, last;
  UserName({required this.title, required this.first, required this.last});
  factory UserName.fromMap(Map<String, dynamic> json) {
    return UserName(
      title: json['title'],
      first: json['first'],
      last: json['last'],
    );
  }
}
