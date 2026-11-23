// Autor: Adrian Ramirez Mendez · No. control 1225100309 · GTID243 · Lotería Push (TDD)
import 'package:shared_preferences/shared_preferences.dart';

import '../dominio/almacen.dart';

class AlmacenPrefs implements Almacen {
  AlmacenPrefs(this._p);
  final SharedPreferences _p;

  @override
  Future<String?> leerTexto(String clave) async => _p.getString(clave);
  @override
  Future<void> guardarTexto(String clave, String valor) => _p.setString(clave, valor);
  @override
  Future<void> borrar(String clave) => _p.remove(clave);
}
