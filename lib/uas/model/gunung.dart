import 'dart:convert';

Gunung gunungFromJson(String str) => Gunung.fromJson(json.decode(str));

String gunungToJson(Gunung data) => json.encode(data.toJson());

class Gunung {
  final String bentuk;
  final String desc;
  final String estimasiLetusanTerakhir;
  final String geolokasi;
  final String img;
  final String kota;
  final String nama;
  final String tinggiMeter;
  final String status;

  Gunung({
    required this.bentuk,
    required this.desc,
    required this.estimasiLetusanTerakhir,
    required this.geolokasi,
    required this.img,
    required this.kota,
    required this.nama,
    required this.tinggiMeter,
    required this.status
  });

  factory Gunung.fromJson(Map<String, dynamic> json) => Gunung(
        bentuk: json["bentuk"],
        desc: json["desc"],
        estimasiLetusanTerakhir: json["estimasi_letusan_terakhir"],
        geolokasi: json["geolokasi"],
        img: json["img"],
        kota: json["kota"],
        nama: json["nama"],
        tinggiMeter: json["tinggi_meter"],
        status: json["status"]
      );

  Map<String, dynamic> toJson() => {
        "bentuk": bentuk,
        "desc": desc,
        "estimasi_letusan_terakhir": estimasiLetusanTerakhir,
        "geolokasi": geolokasi,
        "img": img,
        "kota": kota,
        "nama": nama,
        "tinggi_meter": tinggiMeter,
        "status": status
      };
}
