class News {
  final String id;
  final String companyId;
  final String newsImage;
  final String companyName;
  final String newsHeading;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;

  News({
    required this.id,
    required this.companyId,
    required this.newsImage,
    required this.companyName,
    required this.newsHeading,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: json['_id'],
      companyId: json['companyId'],
      newsImage: json['newsImage'],
      companyName: json['companyName'],
      newsHeading: json['newsHeading'],
      description: json['description'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}