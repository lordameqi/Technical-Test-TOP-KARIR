// To parse this JSON data, do
//
//     final daftarTeamModel = daftarTeamModelFromJson(jsonString);

import 'dart:convert';

DaftarTeamModel daftarTeamModelFromJson(String str) =>
    DaftarTeamModel.fromJson(json.decode(str));

String daftarTeamModelToJson(DaftarTeamModel data) =>
    json.encode(data.toJson());

class DaftarTeamModel {
  DaftarTeamModel({
    this.teams,
  });

  List<Map<String, String>> teams;

  factory DaftarTeamModel.fromJson(Map<String, dynamic> json) =>
      DaftarTeamModel(
        teams: json["teams"] == null
            ? null
            : List<Map<String, String>>.from(json["teams"].map((x) =>
                Map.from(x).map((k, v) =>
                    MapEntry<String, String>(k, v == null ? null : v)))),
      );

  Map<String, dynamic> toJson() => {
        "teams": teams == null
            ? null
            : List<dynamic>.from(teams.map((x) => Map.from(x).map(
                (k, v) => MapEntry<String, dynamic>(k, v == null ? null : v)))),
      };
}
