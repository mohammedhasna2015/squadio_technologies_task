/// id : 1654001
/// profiles : [{"aspect_ratio":0.667,"height":1200,"iso_639_1":null,"file_path":"/f8VWGyaIS38NkDIzQ2hapXKt0N5.jpg","vote_average":5.626,"vote_count":18,"width":800},{"aspect_ratio":0.667,"height":1440,"iso_639_1":null,"file_path":"/1aY5d4wJARgEH85MWFJc9xg49I2.jpg","vote_average":5.456,"vote_count":7,"width":960},{"aspect_ratio":0.667,"height":943,"iso_639_1":null,"file_path":"/A2ImcutXcVnU21Pn2cSKcz6R3LW.jpg","vote_average":5.338,"vote_count":13,"width":629},{"aspect_ratio":0.667,"height":2999,"iso_639_1":null,"file_path":"/dOO74ROYEbXzyaargPrUpQMh8E5.jpg","vote_average":4.982,"vote_count":13,"width":2000},{"aspect_ratio":0.667,"height":750,"iso_639_1":null,"file_path":"/drB9FJC72PiQabjXrJhk2wH2kcG.jpg","vote_average":4.954,"vote_count":9,"width":500}]

class ResponseImagesPeopleModel {
  ResponseImagesPeopleModel({
      this.id, 
      this.profiles,});

  ResponseImagesPeopleModel.fromJson(dynamic json) {
    id = json['id'];
    if (json['profiles'] != null) {
      profiles = [];
      json['profiles'].forEach((v) {
        profiles?.add(Profiles.fromJson(v));
      });
    }
  }
  int? id;
  List<Profiles>? profiles;
ResponseImagesPeopleModel copyWith({  int? id,
  List<Profiles>? profiles,
}) => ResponseImagesPeopleModel(  id: id ?? this.id,
  profiles: profiles ?? this.profiles,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (profiles != null) {
      map['profiles'] = profiles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// aspect_ratio : 0.667
/// height : 1200
/// iso_639_1 : null
/// file_path : "/f8VWGyaIS38NkDIzQ2hapXKt0N5.jpg"
/// vote_average : 5.626
/// vote_count : 18
/// width : 800

class Profiles {
  Profiles({
      this.aspectRatio, 
      this.height, 
      this.iso6391, 
      this.filePath, 
      this.voteAverage, 
      this.voteCount, 
      this.width,});

  Profiles.fromJson(dynamic json) {
    aspectRatio = json['aspect_ratio'];
    height = json['height'];
    iso6391 = json['iso_639_1'];
    filePath = json['file_path'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
    width = json['width'];
  }
  double? aspectRatio;
  int? height;
  dynamic iso6391;
  String? filePath;
  double? voteAverage;
  int? voteCount;
  int? width;
Profiles copyWith({  double? aspectRatio,
  int? height,
  dynamic iso6391,
  String? filePath,
  double? voteAverage,
  int? voteCount,
  int? width,
}) => Profiles(  aspectRatio: aspectRatio ?? this.aspectRatio,
  height: height ?? this.height,
  iso6391: iso6391 ?? this.iso6391,
  filePath: filePath ?? this.filePath,
  voteAverage: voteAverage ?? this.voteAverage,
  voteCount: voteCount ?? this.voteCount,
  width: width ?? this.width,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['aspect_ratio'] = aspectRatio;
    map['height'] = height;
    map['iso_639_1'] = iso6391;
    map['file_path'] = filePath;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    map['width'] = width;
    return map;
  }

}