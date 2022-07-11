class Pokemon {
  List<String>? abilities;
  String? detailPageUrl;
  int? weight;
  List<String>? weakness;
  String? number;
  int? height;
  String? collectiblesSlug;
  String? featured;
  String? slug;
  String? description;
  String? name;
  String? thumbnailAltText;
  String? thumbnailImage;
  int? id;
  List<String>? type;

  Pokemon(
      {this.abilities,
      this.detailPageUrl,
      this.weight,
      this.weakness,
      this.number,
      this.height,
      this.collectiblesSlug,
      this.featured,
      this.slug,
      this.description,
      this.name,
      this.thumbnailAltText,
      this.thumbnailImage,
      this.id,
      this.type});

  Pokemon.fromJson(Map<String, dynamic> json) {
    abilities =
        json["abilities"] == null ? null : List<String>.from(json["abilities"]);
    detailPageUrl = json["detailPageURL"];
    weight = json["weight"];
    weakness =
        json["weakness"] == null ? null : List<String>.from(json["weakness"]);
    number = json["number"];
    height = json["height"];
    collectiblesSlug = json["collectibles_slug"];
    featured = json["featured"];
    slug = json["slug"];
    description = json["description"];
    name = json["name"];
    thumbnailAltText = json["thumbnailAltText"];
    thumbnailImage = json["thumbnailImage"];
    id = json["id"];
    type = json["type"] == null ? null : List<String>.from(json["type"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (abilities != null) data["abilities"] = abilities;
    data["detailPageURL"] = detailPageUrl;
    data["weight"] = weight;
    if (weakness != null) data["weakness"] = weakness;
    data["number"] = number;
    data["height"] = height;
    data["collectibles_slug"] = collectiblesSlug;
    data["featured"] = featured;
    data["slug"] = slug;
    data["description"] = description;
    data["name"] = name;
    data["thumbnailAltText"] = thumbnailAltText;
    data["thumbnailImage"] = thumbnailImage;
    data["id"] = id;
    if (type != null) data["type"] = type;
    return data;
  }
}
