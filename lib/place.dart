import 'dart:convert';

List<Place> placeFromJson(String str) => List<Place>.from(json.decode(str).map((x) => Place.fromJson(x)));

String placeToJson(List<Place> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Place {
    Place({
        this.id,
        this.placeName,
        this.address,
        this.description,
    });

    String id;
    String placeName;
    String address;
    String description;

    factory Place.fromJson(Map<String, dynamic> json) => Place(
        id: json["Id"],
        placeName: json["Place Name"],
        address: json["Address"],
        description: json["Description"],
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "Place Name": placeName,
        "Address": address,
        "Description": description,
    };
}
