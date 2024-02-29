abstract class Controller<T>{
  Future<List<T>> get(String apiPath);
  Future<void> post(T data, String apiPath);
}