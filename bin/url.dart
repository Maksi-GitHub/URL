import 'dart:io';

void main() {
  while (true) {
    print('Введите URL:');
    String url = stdin.readLineSync()!.trim();

    try {
      Uri uri = Uri.parse(url);
      if (uri.scheme.isEmpty) {
        throw FormatException('Схема URL не указана.');
      }
      print('Схема: ${uri.scheme}');
      print('Хост: ${uri.host}');
      print('Путь: ${uri.path}');
      print('Query параметры: ${uri.queryParametersAll}');
    } catch (e) {
      print('Ошибка: ${e.toString()}');
    }
  }
}
