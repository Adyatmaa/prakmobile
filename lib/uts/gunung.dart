class Gunung {
  final String nama;
  final String bentuk;
  final String tinggi_meter;
  final dynamic estimasi_letusan_terakhir;
  final String geolokasi;
  final String img;
  final String desc;
  final String kota;

  Gunung(
      {required this.nama,
      required this.bentuk,
      required this.tinggi_meter,
      required this.estimasi_letusan_terakhir,
      required this.geolokasi,
      required this.img,
      required this.desc,
      required this.kota});
}

var GundoList = [
  Gunung(
      nama: 'Gunung Kelud',
      bentuk: 'Stratovulkan',
      tinggi_meter: '1731 Meter',
      estimasi_letusan_terakhir: '13 Februari 2014',
      geolokasi: '7.93°S 112.308°E',
      img:
          'https://cdns.klimg.com/merdeka.com/i/w/news/2022/06/18/1445165/540x270/6-wisata-gunung-kelud-yang-indah-dan-menakjubkan-wajib-dikunjungi.jpg',
      desc:
          'Gunung Kelud (ꦒꦸꦤꦸꦁꦏꦼꦭꦸꦠ꧀a) adalah sebuah gunung berapi di Jawa Timur yang hingga sekarang tergolong aktif. Secara geografis letak gunung ini berada di perbatasan antara Kabupaten Kediri, Kabupaten Blitar, dan Kabupaten Malang, namun secara administratif, gunung ini adalah milik Pemerintah Kabupaten Kediri. Lokasinya kira-kira 45 km sebelah timur pusat Kota Kediri dan 25 km sebelah utara pusat Kota Blitar. Gunung Kelud merupakan salah satu gunung berapi paling aktif di Indonesia. Sejak tahun 1000 M, Kelud telah meletus lebih dari 30 kali, dengan letusan terbesar berkekuatan 5 Volcanic Explosivity Index (VEI). Letusan terakhir Gunung Kelud terjadi pada tahun 2014.',
      kota:
          'Perbatasan Kabupaten Kediri, Kabupaten Blitar, dan Kabupaten Malang'),
  Gunung(
      nama: 'Gunung Arjuno-Welirang',
      bentuk: 'Stratovulkan',
      tinggi_meter: '3339 Meter',
      estimasi_letusan_terakhir: '15 Agustus 1952',
      geolokasi: '7.725°S 112.58°E',
      img:
          'https://tahurarsoerjo.dishut.jatimprov.go.id/images/owa/arjuno/img-03.png',
      desc:
          'Gunung Arjuno (terkadang dieja Gunung Arjuna) adalah sebuah gunung berapi kerucut (istirahat) di Jawa Timur, Indonesia dengan ketinggian 3.339 m dpl. Gunung Arjuno secara administratif terletak di perbatasan Kota Batu, Kabupaten Malang, dan Kabupaten Pasuruan dan berada di bawah pengelolaan Taman Hutan Raya Raden Soerjo. Gunung Arjuno merupakan gunung tertinggi kedua di Jawa Timur setelah Gunung Semeru, serta menjadi yang tertinggi keempat di Pulau Jawa. Biasanya gunung ini dicapai dari tiga titik pendakian yang cukup dikenal yaitu dari Lawang, Tretes dan Batu. Nama Arjuno berasal dari salah satu tokoh pewayangan Mahabharata, Arjuna.',
      kota: 'Perbatasan Kota Batu, Kabupaten Malang, dan Kabupaten Pasuruan'),
  Gunung(
      nama: 'Gunung Semeru',
      bentuk: 'Stratovulkan',
      tinggi_meter: '3876 Meter',
      estimasi_letusan_terakhir: '2020',
      geolokasi: '8.108°S 112.92°E',
      img:
          'https://akcdn.detik.net.id/visual/2021/12/09/gunung-semeru-2_43.jpeg',
      desc:
          'Gunung Semeru atau Gunung Meru adalah sebuah gunung berapi kerucut di Jawa Timur, Indonesia. Gunung Semeru merupakan gunung tertinggi di Pulau Jawa, dengan puncaknya Mahameru, 3.676 meter dari permukaan laut (mdpl). Gunung ini terbentuk akibat subduksi Lempeng Indo-Australia kebawah Lempeng Eurasia. Gunung Semeru juga merupakan gunung berapi tertinggi ketiga di Indonesia setelah Gunung Kerinci di Sumatra dan Gunung Rinjani di Nusa Tenggara Barat. Kawah di puncak Gunung Semeru dikenal dengan nama Jonggring Saloko.',
      kota: 'Kabupaten Malang dan Kabupaten Lumajang'),
  Gunung(
      nama: 'Gunung Bromo',
      bentuk: 'Kerucut Bara',
      tinggi_meter: '2329 Meter',
      estimasi_letusan_terakhir: '8 Juni 2016',
      geolokasi: '7.942°S 112.95°E',
      img:
          'https://asset-2.tstatic.net/gayo/foto/bank/images/Gunung-Geureudong-di-Bener-Meriah.jpg',
      desc:
          'Gunung Bromo atau dalam bahasa Tengger dieja Brama, juga disebut Kaldera Tengger, adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal sebagai objek wisata utama di Jawa Timur. Sebagai sebuah objek wisata, Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif. Gunung Bromo termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru.',
      kota:
          'Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang.'),
  Gunung(
      nama: 'Gunung Agung',
      bentuk: 'Stratovulkan',
      tinggi_meter: '3142 Meter',
      estimasi_letusan_terakhir: '2 Juli 2018',
      geolokasi: '8.342°S 115.508°E',
      img: 'https://indoraya.news/wp-content/uploads/2022/08/gunung-agung.jpg',
      desc:
          'Gunung Agung adalah gunung tertinggi di pulau Bali dengan ketinggian 3.142 mdpl. Gunung ini terletak di kecamatan Rendang, Kabupaten Karangasem, Bali, Indonesia. Pura Besakih, yang merupakan salah satu Pura terpenting di Bali, terletak di lereng gunung ini.',
      kota: 'Bali'),
  Gunung(
      nama: 'Gunung Rinjani',
      bentuk: 'stratovulkan',
      tinggi_meter: '3726 meter',
      estimasi_letusan_terakhir: '27 September 2016',
      geolokasi: '8.42°S 116.47°E',
      img:
          'https://kwriu.kemdikbud.go.id/wp-content/uploads/2017/04/Rinjani-742x440.jpg',
      desc:
          'Gunung Rinjani adalah gunung yang berlokasi di Pulau Lombok, Nusa Tenggara Barat. Gunung yang merupakan gunung berapi kedua tertinggi di Indonesia dengan ketinggian 3.726 mdpl merupakan gunung favorit bagi pendaki Indonesia karena keindahan pemandangannya. Gunung ini merupakan bagian dari Taman Nasional Gunung Rinjani yang memiliki luas sekitar 41.330 ha dan ini akan diusulkan penambahannya sehingga menjadi 76.000 ha ke arah barat dan timur.',
      kota: 'Lombok'),
  Gunung(
      nama: 'Gunung Ijen',
      bentuk: 'Stratovulkan',
      tinggi_meter: '2799 meter',
      estimasi_letusan_terakhir: '28 Juni 1999',
      geolokasi: '8.058°S 114.242°E',
      img:
          'https://asset.kompas.com/crops/JAI-OD0Mk6a-48b4PyQs1v72RFY=/0x0:739x493/750x500/data/photo/2020/03/20/5e74a47552a87.jpg',
      desc:
          'Gunung Ijen adalah sebuah gunung berapi yang terletak di perbatasan Kabupaten Banyuwangi dan Kabupaten Bondowoso, Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.386 mdpl. Gunung Ijen terakhir meletus pada tahun 1999. Salah satu fenomena alam yang paling terkenal dari Gunung Ijen adalah blue fire (api biru) di dalam kawah yang terletak di puncak gunung tersebut. Pendakian gunung ini bisa dimulai dari dua tempat, yakni dari Banyuwangi atau dari Bondowoso.',
      kota: 'Perbatasan Kabupaten Banyuwangi dan Kabupaten Bondowoso'),
  Gunung(
      nama: 'Gunung Salak',
      bentuk: 'Stratovulkan',
      tinggi_meter: '2211 meter',
      estimasi_letusan_terakhir: '31 Januari 1938',
      geolokasi: '6.72°S 106.73°E',
      img:
          'https://media.sukabumiupdate.com/media/2023/05/13/1683951155_645f0e33de956_SgycRIq0HQgWYntIsWlk.webp',
      desc:
          'Gunung Salak merupakan kompleks gunung berapi yang terletak di selatan Jakarta, di Pulau Jawa. Kawasan rangkaian gunung ini termasuk ke dalam wilayah Kabupaten Sukabumi dan Kabupaten Bogor, Jawa Barat. Pengelolaan kawasan hutannya semula berada di bawah Perum Perhutani Kesatuan Pemangkuan Hutan (KPH) Bogor, tetapi sejak 2003 menjadi wilayah perluasan Taman Nasional Gunung Halimun, dan dikelola sebagai Taman Nasional Gunung Halimun-Salak.',
      kota: 'Kabupaten Sukabumi dan Kabupaten Bogor'),
  Gunung(
      nama: 'Gunung Tangkuban Perahu',
      bentuk: 'Stratovulkan',
      tinggi_meter: '2084 meter',
      estimasi_letusan_terakhir: '2 Agustus 2019',
      geolokasi: '6.77°S 107.60°E',
      img:
          'https://asset.kompas.com/crops/RR_Lb6Xtcav7TMWFp8PGuZEbRCE=/91x0:848x505/750x500/data/photo/2022/06/27/62b9454f2deff.jpg',
      desc:
          'Gunung Tangkuban Parahu adalah salah satu gunung yang terletak di Lembang, Kabupaten Bandung Barat, Provinsi Jawa Barat, Indonesia. Sekitar 20 km ke arah utara Kota Bandung, dengan rimbun pohon pinus dan hamparan kebun teh di sekitarnya, Gunung Tangkuban Parahu mempunyai ketinggian setinggi 2.084 meter. Bentuk gunung ini adalah Stratovulcano dengan pusat erupsi yang berpindah dari timur ke barat. Jenis batuan yang dikeluarkan melalui letusan kebanyakan adalah lava dan sulfur, mineral yang dikeluarkan adalah sulfur belerang, mineral yang dikeluarkan saat gunung tidak aktif adalah uap belerang. Daerah Gunung Tangkuban Parahu dikelola oleh Perum Perhutanan. Suhu rata-rata hariannya adalah 17oC pada siang hari dan 2 °C pada malam hari.',
      kota: 'Lembang, Kabupaten Bandung Barat'),
  Gunung(
      nama: 'Gunung Slamet',
      bentuk: 'Stratovulkan',
      tinggi_meter: '3432 meter',
      estimasi_letusan_terakhir: '14 Maret 2014',
      geolokasi: '7.242°S 109.208°E',
      img: 'https://www.nativeindonesia.com/foto/2022/06/gunung-slamet.jpg',
      desc:
          'Gunung Slamet adalah gunung tertinggi di Jawa Tengah dan gunung tertinggi kedua di pulau Jawa, setelah gunung Semeru. Gunung Slamet juga merupakan salah satu gunung tunggal terbesar atau terluas di Indonesia seperti halnya Gunung Tambora di Nusa Tenggara Barat, karena memiliki diameter tunggal gunung (tidak ada gunung lain dalam area tersebut) terluas di Indonesia dengan luas vegetasi sekitar 312 km² (31.200 ha) dan luas total area gunung mencapai 560 km² (56.000 ha), area nya tercakup dalam 5 (lima) Kabupaten.',
      kota:
          'Kabupaten Banyumas, Kabupaten Purbalingga, Kabupaten Pemalang, Kabupaten Tegal'),
  Gunung(
      nama: 'Gunung Dieng',
      bentuk: 'Kompleks',
      tinggi_meter: '2565 meter',
      estimasi_letusan_terakhir: '31 Desember 1996',
      geolokasi: '7.20°S 109.92°E',
      img:
          'https://images.tokopedia.net/img/KRMmCm/2022/6/23/b0cb194f-406d-422b-a3df-122234cd80fc.jpg',
      desc:
          'Gunung Dieng adalah kawasan pegunungan yang membentang dari wilayah barat Kabupaten Wonosobo, wilayah timur Kabupaten Banjarnegara, wilayah selatan Kabupaten Batang dan Kabupaten Pekalongan di Provinsi Jawa Tengah; sekaligus menjadi batas alamiah bagi keempat kabupaten tersebut. Puncak tertinggi di Pegunungan Dieng berada di Gunung Parahu yang memiliki ketinggian lebih dari 2.590 meter di atas permukaan laut.',
      kota: 'Kabupaten Wonosobo'),
  Gunung(
      nama: 'Gunung Merbabu',
      bentuk: 'Stratovulkan',
      tinggi_meter: '3145 meter',
      estimasi_letusan_terakhir: '1797',
      geolokasi: '7.45°S 110.43°E',
      img:
          'https://images.tokopedia.net/blog-tokopedia-com/uploads/2018/10/merbabu-.jpg',
      desc:
          'Gunung Merbabu (ꦒꦸꦤꦸꦁ​ꦩꦼꦂꦧꦧꦸ) adalah gunung api yang bertipe Stratovulcano yang terletak secara geografis pada 7,5° LS dan 110,4° BT. Secara administratif gunung ini berada di wilayah Kabupaten Magelang di lereng sebelah barat dan Kabupaten Boyolali di lereng sebelah timur dan selatan, Kabupaten Semarang di lereng sebelah utara, Provinsi Jawa Tengah.',
      kota: 'Kabupaten Magelang dan Boyolali'),
  Gunung(
      nama: 'Gunung Merapi',
      bentuk: 'Stratovulkan',
      tinggi_meter: '2968 meter',
      estimasi_letusan_terakhir: '2021',
      geolokasi: '7.542°S 110.442°E',
      img:
          'https://upload.wikimedia.org/wikipedia/commons/9/9d/Mount_Merapi_in_2014.jpg',
      desc:
          'Gunung Merapi (ketinggian puncak 2.930 mdpl, per 2010) (ꦒꦸꦤꦸꦁ​ꦩꦼꦫꦥꦶ) adalah gunung berapi di bagian tengah Pulau Jawa dan merupakan salah satu gunung api teraktif di Indonesia. Lereng sisi selatan berada dalam administrasi Kabupaten Sleman, Daerah Istimewa Yogyakarta, dan sisanya berada dalam wilayah Provinsi Jawa Tengah, yaitu Kabupaten Magelang di sisi barat, Kabupaten Boyolali di sisi utara dan timur, serta Kabupaten Klaten di sisi tenggara. Kawasan hutan di sekitar puncaknya menjadi kawasan Taman Nasional Gunung Merapi sejak tahun 2004.',
      kota: 'Sleman'),
  Gunung(
      nama: 'Gunung Muria',
      bentuk: 'Stratovulkan',
      tinggi_meter: '1625 meter',
      estimasi_letusan_terakhir: '160 SM',
      geolokasi: '6.62°S 110.88°E',
      img:
          'https://salsawisata.com/wp-content/uploads/2023/01/125314788_1722478827914376_7431535581040524253_n-PhotoRoom.jpg',
      desc:
          'Gunung Muria (di masa kolonial dikenal sebagai Moerija atau Moerjo) adalah sebuah gunung bertipe stratovolcano, yang terletak di pantai utara Jawa Tengah, sekitar 66 kilometer di timur laut Kota Semarang. Gunung ini termasuk ke dalam wilayah Kota Jepara di sisi barat, wilayah Kota Kudus di sisi selatan, dan wilayah Kota Pati di sisi timur. Gunung ini memiliki ketinggian 1602 mdpl, tetapi sumber lain menyebutkan bahwa tingginya 1625 mdpl.',
      kota: 'Kota Jepara, Kota Kudus, Kota Pati'),
  Gunung(
      nama: "Krakatau",
      bentuk: "kaldera",
      tinggi_meter: "813 meter",
      estimasi_letusan_terakhir: "22 Desember 2018",
      geolokasi: "6.102°S 105.423°E",
      img:
          'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/07/02/3800773254.jpg',
      desc:
          'Krakatau (atau dengan nama internasional Krakatoa ataupun Rakata) adalah kepulauan vulkanik yang masih aktif dan berada di Kecamatan Rajabasa, Kabupaten Lampung Selatan, tepatnya di perairan Selat Sunda, antara Pulau Jawa dan Sumatra. Nama ini juga disematkan pada satu puncak gunung berapi di sana (Gunung Krakatau). Gunung Krakatau Purba pernah meletus hebat tahun 535 M yang menyebabkan terbentuknya Selat Sunda, hilangnya peradaban Pasemah Lampung dan Salakanegara Banten selama sekitar 20-30 tahun. Ledakan Gunung Krakatau menyebabkan tsunami, langit gelap, dan cuaca dingin. Pada tahun 1680, pernah terjadi letusan juga. Peristiwa itu pun masih berlanjut terulang kembali yang menyebabkan Krakatau sirna karena letusan kataklismik pada tanggal 26-27 Agustus 1883. Pada tahun 2019, kawasan yang sekarang merupakan cagar alam ini memiliki empat pulau kecil: Pulau Rakata, Pulau Anak Krakatau, Pulau Sertung, dan Pulau Panjang (Rakata Kecil). Berdasarkan kajian geologi, semua pulau ini berasal dari sistem gunung berapi tunggal Krakatau yang pernah ada di masa lalu.',
      kota: 'Lampung selatan')
];
