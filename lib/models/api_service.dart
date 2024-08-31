import 'package:http/http.dart' as http;
import 'dart:convert';
import 'currency_rate.dart';

Future<CurrencyRate> fetchCurrencyRates() async {
  final response = await http.get(
    Uri.parse(
        'https://v6.exchangerate-api.com/v6/1eea3d1fae880867407414a0/latest/USD'),
  );

  if (response.statusCode == 200) {
    return CurrencyRate.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load currency rates');
  }
}
