import 'package:flutter/material.dart';
import 'package:flutter_second_app/models/veri.dart';

class MainPage extends StatefulWidget {

  MainPage(Key k) : super(key: k);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<Veri> allData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allData = [
      Veri("Biz Kimiz", "Biz kimizin icerigi buraya gelecek", false),
      Veri("Biz Neredeyiz", "Biz Neredeyiz icerigi buraya gelecek", false),
      Veri("Biz Ne Yapiyoruz", "Biz Ne Yapiyoruz icerigi buraya gelecek", false),
      Veri("Biz Kim Icin Buradayiz", "Biz Kim Icin Buradayiz icerigi buraya gelecek", false),
      Veri("Vizyon", "Biz Vizyon icerigi buraya gelecek", false),
      Veri("Misyon", "Biz Misyon icerigi buraya gelecek", false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ExpansionTile(
        key: PageStorageKey(index),
        initiallyExpanded: allData[index].expanded,
        title: Text(allData[index].baslik),
        children: <Widget>[
          Container(
            color: index % 2 == 0
                ? Colors.amberAccent.shade200
                : Colors.blueGrey.shade600,
            height: 150,
            child: Center(child: Text(allData[index].icerik)),
          )
        ],
      );
    }, itemCount: allData.length,);
  }
}
