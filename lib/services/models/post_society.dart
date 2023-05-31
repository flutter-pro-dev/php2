class PostSocietyModel {
  String? stateId;
  String? cityId;
  String? societyName;
  String? societyRegNo;
  String? address;
  String? latitude;
  String? longitude;

  PostSocietyModel(
      {this.stateId,
      this.cityId,
      this.societyName,
      this.societyRegNo,
      this.address,
      this.latitude,
      this.longitude});

  PostSocietyModel.fromJson(Map<String, dynamic> json) {
    stateId = json['state_id'];
    cityId = json['city_id'];
    societyName = json['societyName'];
    societyRegNo = json['SocietyRegNo'];
    address = json['Address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state_id'] = this.stateId;
    data['city_id'] = this.cityId;
    data['societyName'] = this.societyName;
    data['SocietyRegNo'] = this.societyRegNo;
    data['Address'] = this.address;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
