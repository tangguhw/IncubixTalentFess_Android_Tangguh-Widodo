import 'package:dio/dio.dart';
import 'package:pertemuan6/model/alquran_model.dart';

final dio = Dio();

// void getAlquran() async {
//   final res = await dio.get("https://equran.id/api/v2/surat");
//   print(res);
// }

// Future<List<AlquranModel>> getAlquran() async{
//   final res = await dio.get("");
// }

Future<AlquranModel> getAlquran(int id) async {
  final res = await dio.get("https://equran.id/api/v2/surat/$id");
  print(res);
  return AlquranModel.fromJson(res.data["data"]);
}
