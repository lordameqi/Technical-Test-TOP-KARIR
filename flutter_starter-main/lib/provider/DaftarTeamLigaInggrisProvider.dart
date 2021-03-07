import 'package:flutterstarter/shareds/ViewState.dart';

import 'BaseProvider.dart';
import 'package:flutterstarter/models/TeamInggrisModel.dart';
import 'package:flutterstarter/services/daftarteaminggrisservice.dart';
import '../locator.dart';

class DaftarTeamLigaInggrisProvider extends BaseProvider {
  DaftarTeamModel daftarteaminggrismodel;
  Daftarteaminggrisservice daftarteamservice =
      locator<Daftarteaminggrisservice>();
  void getDaftarTeamLigaInggris() async {
    setState(ViewState.Fetching);
    daftarteaminggrismodel = await daftarteamservice.getDaftarTeamInggris();
    setState(ViewState.Idle);
  }
}
