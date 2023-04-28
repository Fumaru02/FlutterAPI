class UserPicture {
  final String large, medium, thumbnail;
  UserPicture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  factory UserPicture.fromMap(Map<String, dynamic> e) {
    return UserPicture(
        large: e['large'], medium: e['medium'], thumbnail: e['thumbnail']);
  }
}
