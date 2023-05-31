class GetStateModels {
  String? stateId;
  String? name;

  GetStateModels({this.stateId, this.name});

  GetStateModels.fromJson(Map<String, dynamic> json) {
    stateId = json['state_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state_id'] = this.stateId;
    data['name'] = this.name;
    return data;
  }
}
