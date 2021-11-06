
class Post {
  String? name;

  Post({required this.name});

  Post.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['name'] = name;
    return data;
  }
}