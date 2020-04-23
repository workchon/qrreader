 import 'dart:async';

import 'package:qrreader/src/provider/db_provider.dart';

class ScansBloc {
   static final ScansBloc _singleton = new ScansBloc._internal();

   factory ScansBloc() {
     return _singleton;
   }

   ScansBloc._internal() {
     //obtener Scans de la base de datos
     
   }


  final _scansController = StreamController<List<ScanModel>>.broadcast();

  Stream<List<ScanModel>> get scansStream => _scansController.stream;
  dispose() {
    _scansController?.close();
  }


}

