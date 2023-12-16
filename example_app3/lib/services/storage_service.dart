import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../data/geo.dart';

class MyStorage {
  GetStorage? box;

  Future init() async {
    await GetStorage.init();
    box = GetStorage();
    print('box is ready');
    print(box);
  }

  Future<void> saveData(String key, String value) async {
    box!.write(key, value);
  }

  Future<String> getData(String key) async {
    try {
      var x = await box!.read(key);
      print('x is $x');
      return x;
    } catch (e) {
      print('error');
    }
    return 'nulllll';
  }

  get token => ReadWriteValue('token', '');
  get peo => ReadWriteValue('peo', People(name: '', age: 0));
  get geo => ReadWriteValue('geo', const Geo(lat: '0', lng: '0'));
  get geoo => <Geo>[const Geo(lat: '0', lng: '0')].val('geoo');
  get geooo => ''.val('geooo');
  get geoooo => {}.val('geoooo');
  get pass => ''.val('pass');

  saveGeo(int lat, int lng) {
    Geo geo = Geo(lat: lat.toString(), lng: lng.toString());
    Map<String, dynamic> map = geo.toJson();
    geoooo.val = map;
  }

  Geo readGeo() {
    Map<String, dynamic> str = geoooo.val;
    Geo geo = Geo.fromJson(str);
    return geo;
  }
}

class People {
  String name;
  int age;
  People({required this.name, required this.age});
}
