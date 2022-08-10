/// adult : false
/// also_known_as : ["앰버 미드선더","Άμπερ Μιντθούντερ"]
/// biography : "Amber Midthunder (born April 26, 1997) is a Native American actress. She is known for her main role in the FX series Legion, and appearances in Longmire and Banshee. Amber is an enrolled member of the Fort Peck Sioux Tribe.\n\nDescription above from the Wikipedia article Amber Midthunder, licensed under CC-BY-SA, full list of contributors on Wikipedia."
/// birthday : "1997-04-26"
/// deathday : null
/// gender : 1
/// homepage : null
/// id : 1654001
/// imdb_id : "nm1690270"
/// known_for_department : "Acting"
/// name : "Amber Midthunder"
/// place_of_birth : "Santa Fe, New Mexico, U.S."
/// popularity : 334.384
/// profile_path : "/f8VWGyaIS38NkDIzQ2hapXKt0N5.jpg"

class ResponseDetailsPeopleModel {
  ResponseDetailsPeopleModel({
      this.adult, 
      this.alsoKnownAs, 
      this.biography, 
      this.birthday, 
      this.deathday, 
      this.gender, 
      this.homepage, 
      this.id, 
      this.imdbId, 
      this.knownForDepartment, 
      this.name, 
      this.placeOfBirth, 
      this.popularity, 
      this.profilePath,});

  ResponseDetailsPeopleModel.fromJson(dynamic json) {
    adult = json['adult'];
    alsoKnownAs = json['also_known_as'] != null ? json['also_known_as'].cast<String>() : [];
    biography = json['biography'];
    birthday = json['birthday'];
    deathday = json['deathday'];
    gender = json['gender'];
    homepage = json['homepage'];
    id = json['id'];
    imdbId = json['imdb_id'];
    knownForDepartment = json['known_for_department'];
    name = json['name'];
    placeOfBirth = json['place_of_birth'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
  }
  bool? adult;
  List<String>? alsoKnownAs;
  String? biography;
  String? birthday;
  dynamic deathday;
  int? gender;
  dynamic homepage;
  int? id;
  String? imdbId;
  String? knownForDepartment;
  String? name;
  String? placeOfBirth;
  double? popularity;
  String? profilePath;
ResponseDetailsPeopleModel copyWith({  bool? adult,
  List<String>? alsoKnownAs,
  String? biography,
  String? birthday,
  dynamic deathday,
  int? gender,
  dynamic homepage,
  int? id,
  String? imdbId,
  String? knownForDepartment,
  String? name,
  String? placeOfBirth,
  double? popularity,
  String? profilePath,
}) => ResponseDetailsPeopleModel(  adult: adult ?? this.adult,
  alsoKnownAs: alsoKnownAs ?? this.alsoKnownAs,
  biography: biography ?? this.biography,
  birthday: birthday ?? this.birthday,
  deathday: deathday ?? this.deathday,
  gender: gender ?? this.gender,
  homepage: homepage ?? this.homepage,
  id: id ?? this.id,
  imdbId: imdbId ?? this.imdbId,
  knownForDepartment: knownForDepartment ?? this.knownForDepartment,
  name: name ?? this.name,
  placeOfBirth: placeOfBirth ?? this.placeOfBirth,
  popularity: popularity ?? this.popularity,
  profilePath: profilePath ?? this.profilePath,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['also_known_as'] = alsoKnownAs;
    map['biography'] = biography;
    map['birthday'] = birthday;
    map['deathday'] = deathday;
    map['gender'] = gender;
    map['homepage'] = homepage;
    map['id'] = id;
    map['imdb_id'] = imdbId;
    map['known_for_department'] = knownForDepartment;
    map['name'] = name;
    map['place_of_birth'] = placeOfBirth;
    map['popularity'] = popularity;
    map['profile_path'] = profilePath;
    return map;
  }

}