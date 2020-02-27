class Clothes {
  int clothesId;
  String name;
  String price;
  int quantity;
  ClothesImages clothesImages;
  Services services;

  Clothes(
      {this.clothesId,
      this.name,
      this.price,
      this.quantity,
      this.clothesImages,
      this.services});

  Clothes.fromJson(Map<String, dynamic> json) {
    clothesId = json['clothes_id'];
    name = json['name'];
    price = json['price'];
    quantity = json['quantity'];
    clothesImages = json['clothes_images'] != null
        ? new ClothesImages.fromJson(json['clothes_images'])
        : null;
    services = json['services'] != null
        ? new Services.fromJson(json['services'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clothes_id'] = this.clothesId;
    data['name'] = this.name;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    if (this.clothesImages != null) {
      data['clothes_images'] = this.clothesImages.toJson();
    }
    if (this.services != null) {
      data['services'] = this.services.toJson();
    }
    return data;
  }
}

class ClothesImages {
  String name;
  String url;

  ClothesImages({this.name, this.url});

  ClothesImages.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class Services {
  int serviceId;
  String serviceType;

  Services({this.serviceId, this.serviceType});

  Services.fromJson(Map<String, dynamic> json) {
    serviceId = json['service_id'];
    serviceType = json['service_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['service_id'] = this.serviceId;
    data['service_type'] = this.serviceType;
    return data;
  }
}