abstract class Repository<T> {
  Future<List<T>> get(String apiPath);

  Future<Map<String, dynamic>> post(T data, String apiPath);
}
