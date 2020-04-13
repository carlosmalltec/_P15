class ModelCustomer {
  Image image;
  Biography biography;
  String name;
  String response;
  String id;

  ModelCustomer(this.image,this.name,this.response, this.id,this.biography);

  ModelCustomer.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    id = json['id'];
    name = json['name'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
    biography = json['biography'] != null
        ? new Biography.fromJson(json['biography'])
        : null;
  }

  @override
  String toString() {
    return '{,${this.id}, ${this.response},${this.name},${this.image}}';
  }
}

class Image {
  String url;

  Image({this.url});

  Image.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}

class Biography {
  String fullName;
  String alterEgos;
  List<String> aliases;
  String placeOfBirth;
  String firstAppearance;
  String publisher;
  String alignment;

  Biography(
      {this.fullName,
        this.alterEgos,
        this.aliases,
        this.placeOfBirth,
        this.firstAppearance,
        this.publisher,
        this.alignment});

  Biography.fromJson(Map<String, dynamic> json) {
    fullName = json['full-name'];
    alterEgos = json['alter-egos'];
    aliases = json['aliases'].cast<String>();
    placeOfBirth = json['place-of-birth'];
    firstAppearance = json['first-appearance'];
    publisher = json['publisher'];
    alignment = json['alignment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['full-name'] = this.fullName;
    data['alter-egos'] = this.alterEgos;
    data['aliases'] = this.aliases;
    data['place-of-birth'] = this.placeOfBirth;
    data['first-appearance'] = this.firstAppearance;
    data['publisher'] = this.publisher;
    data['alignment'] = this.alignment;
    return data;
  }
}