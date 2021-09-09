class BannerItemModel {
  int id;
  String topImagePath;
  String bottomImagePath;
  double angle;

  BannerItemModel({this.topImagePath, this.bottomImagePath, this.id, this.angle});

  factory BannerItemModel.fromJson(Map<String, dynamic> json) {
    return BannerItemModel(
      id: json["id"],
      topImagePath: json["topImagePath"],
      bottomImagePath: json["bottomImagePath"],
      angle: json["angle"],
    );
  }
}
