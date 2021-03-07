import 'package:flutter/material.dart';
import 'BaseView.dart';
import 'package:flutterstarter/provider/DaftarTeamLigaInggrisProvider.dart';
import 'package:flutterstarter/shareds/ViewState.dart';

class DaftarTeamLigaInggris extends StatefulWidget {
  @override
  _DaftarTeamLigaInggrisState createState() => _DaftarTeamLigaInggrisState();
}

class _DaftarTeamLigaInggrisState extends State<DaftarTeamLigaInggris> {
  @override
  Widget build(BuildContext context) {
    return BaseView<DaftarTeamLigaInggrisProvider>(
      onModelReady: (model) => model.getDaftarTeamLigaInggris(),
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Daftar Team"),
          ),
          body: Container(
              padding: EdgeInsets.all(8),
              child: provider.state == ViewState.Fetching
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        return Card(
                          child: Container(
                            padding: EdgeInsets.all(16),
                            child: Text(provider
                                .daftarteaminggrismodel.teams[index]['strTeam']
                                .toString()),
                          ),
                        );
                      },
                      itemCount: provider.daftarteaminggrismodel.teams.length,
                    )),
        );
      },
    );
  }
}
