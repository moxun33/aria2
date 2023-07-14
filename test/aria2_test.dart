// ignore_for_file: avoid_print

import 'package:flutter_test/flutter_test.dart';

import 'package:aria2/aria2.dart';

void main() {
  test('test aria2', () async {
    Aria2c aria2c = Aria2c('http://127.0.0.1:6800/jsonrpc', "http", "");
    var version = await aria2c.getVersion();
    print(version.toString());
    final addUriRes = await aria2c.addUri([
      'http://pi.mo:5678/©️ v.0712.1955(B)/指南.md',
    ], {
      'dir': '/©️ v.0712.1955(B)'
    });
    // var globalOptions = await aria2c.getGlobalOption();
    // print(globalOptions.toString());
    // var multi = await aria2c.multicall([Method("aria2.tellStopped",[0,100])]);
    // print(multi.toString());
    // var stopped = await aria2c.tellStopped(0,100);
    // print(stopped.toString());
    // var active = await aria2c.tellActive();
    // print(active.toString());
    var globalStatus = await aria2c.getGlobalStat();
    print(globalStatus.toString());

    // var globalOption = await aria2c.getGlobalOption();
    // print(globalOption.toString());
  });
}
