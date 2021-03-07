import 'dart:convert';
import 'dart:developer';
import 'package:flutterstarter/services/service.dart';
import 'package:flutterstarter/models/TeamInggrisModel.dart';

class Daftarteaminggrisservice extends Service {
  Future getDaftarTeamInggris() async {
    String url =
        "https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?l=English%20Premier%20League";
    var response = await get(url);
    log(response.toString(), name: 'Reponse dari API');
    if (response.statusCode == 200) {
      DaftarTeamModel daftarteammodel =
          daftarTeamModelFromJson(jsonEncode(response.data));
      return daftarteammodel;
    }
  }
}
