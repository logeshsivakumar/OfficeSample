class UserDetail {
  late final int objectId;
  late final String objectName;
  late final int objectStatusId;
  late final String objectStatusName;
  late final int periodId;
  late final String periodCode;
  late final String periodName;

  UserDetail.fromJson(Map<String, dynamic> json) {
    objectId = json["objectiveId"];
    objectName = json["objectiveName"];
    objectStatusId = json["objectiveStatusId"];
    objectStatusName = json["objectiveStatusName"];
    periodId = json["periodId"];
    periodCode = json["periodCode"];
    periodName = json["periodName"];
  }
}
