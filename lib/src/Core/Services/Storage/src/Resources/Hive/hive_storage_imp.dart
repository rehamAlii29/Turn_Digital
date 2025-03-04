import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class LocalStorageService {
  static final LocalStorageService _instance = LocalStorageService._internal();

  factory LocalStorageService() {
    return _instance;
  }

  LocalStorageService._internal();

  Future<void> init() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
  }

  Future<Box> openBox(String boxName) async {
    if (Hive.isBoxOpen(boxName)) {
      return Hive.box(boxName);
    } else {
      return await Hive.openBox(boxName);
    }
  }

  Future<void> saveList<E>({
    required List<E> data,
    required Map<String, dynamic> Function(E) toMap,
    required String key,
    required String boxName,
  }) async {
    final box = await openBox(boxName);
    String jsonString = jsonEncode(data.map((e) => toMap(e)).toList());
    await box.put(key, jsonString);
    print("Data Saved on cache $key");
  }

  Future<List<E>> getList<E>({
    required E Function(Map<String, dynamic>) fromMap,
    required String boxName,
    required String key,
  }) async {
    final box = await openBox(boxName);
    String? jsonString = box.get(key);
    if (jsonString == null) return [];

    List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => fromMap(json)).toList();
  }

  Future<void> saveModel<E>({
    required E data,
    required Map<String, dynamic> Function(E) toMap,
    required String key,
    required String boxName,
  }) async {
    final box = await openBox(boxName);
    String jsonString = jsonEncode(toMap(data));
    await box.put(key, jsonString);
    print("Data Saved on cache $key");
  }

  Future<E?> getModel<E>({
    required E Function(Map<String, dynamic>) fromMap,
    required String boxName,
    required String key,
  }) async {
    final box = await openBox(boxName);
    String? jsonString = box.get(key);
    if (jsonString == null) return null;

    Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return fromMap(jsonMap);
  }

  Future<void> save<T>({
    required T data,
    required String key,
    required String boxName,
  }) async {
    final box = await openBox(boxName);
    await box.put(key, data);
    print("Data Saved on cache $key");
  }

  Future<T?> read<T>({required String boxName, required String key}) async {
    final box = await openBox(boxName);
    return box.get(key);
  }

  Future<void> clearBox({required String boxName, required String key}) async {
    if (!Hive.isBoxOpen(boxName)) {
      await Hive.openBox<String>(boxName); // ✅ افتح الصندوق لو مش مفتوح
    }
    final box = Hive.box<String>(boxName);
    await box.delete(key);
  }
// static Future<void> clearProducts() async {
//   final box = await Hive.openBox<String>('productsBox');
//   await box.delete('products');
// }
}
