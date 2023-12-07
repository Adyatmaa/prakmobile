class Place {
  String name;
  String imgAsset;
  String open;
  String jam;
  String harga;
  String desc;
  String kota;

  Place({
    required this.name,
    required this.imgAsset,
    required this.open,
    required this.jam,
    required this.harga,
    required this.desc,
    required this.kota,
  });
}

var PlaceList = [
  Place(
      name: 'Farm House Lembang',
      imgAsset: 'assets/images/pexels-pixabay-261088.jpg',
      open: 'Open Everyday',
      jam: '09.00 - 12.00',
      harga: 'Rp 25.000',
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet tristique mi, vitae cursus nisl. Curabitur pellentesque aliquam nunc sit amet laoreet. Vestibulum sodales leo varius felis porta, tempus rutrum nisi vestibulum. Phasellus sit amet purus quam. Pellentesque auctor velit eget urna fermentum, id cursus purus mattis. Suspendisse sed tellus vehicula justo convallis interdum. Aliquam erat volutpat. Etiam at dapibus leo. Nulla id arcu eget nibh blandit mollis sit amet euismod libero. Quisque sit amet vestibulum metus, ac lacinia lacus. Donec condimentum laoreet ante. Pellentesque vel mauris iaculis, elementum risus a, dignissim enim. Etiam et mauris vitae eros pulvinar scelerisque.',
      kota: 'Bandung'),
  Place(
      name: 'Namek Resort',
      imgAsset: 'assets/images/pexels-quang-nguyen-vinh-2172499.jpg',
      open: 'Open Everyday',
      jam: '09.00 - 13.00',
      harga: 'Rp 25.000',
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet tristique mi, vitae cursus nisl. Curabitur pellentesque aliquam nunc sit amet laoreet. Vestibulum sodales leo varius felis porta, tempus rutrum nisi vestibulum. Phasellus sit amet purus quam. Pellentesque auctor velit eget urna fermentum, id cursus purus mattis. Suspendisse sed tellus vehicula justo convallis interdum. Aliquam erat volutpat. Etiam at dapibus leo. Nulla id arcu eget nibh blandit mollis sit amet euismod libero. Quisque sit amet vestibulum metus, ac lacinia lacus. Donec condimentum laoreet ante. Pellentesque vel mauris iaculis, elementum risus a, dignissim enim. Etiam et mauris vitae eros pulvinar scelerisque.',
      kota: 'Bandung'),
  Place(
      name: 'Farmg House Cibaduyut',
      imgAsset: 'assets/images/pexels-noel-mcshane-1036148.jpg',
      open: 'Open Everyday',
      jam: '09.00 - 16.00',
      harga: 'Rp 25.000',
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet tristique mi, vitae cursus nisl. Curabitur pellentesque aliquam nunc sit amet laoreet. Vestibulum sodales leo varius felis porta, tempus rutrum nisi vestibulum. Phasellus sit amet purus quam. Pellentesque auctor velit eget urna fermentum, id cursus purus mattis. Suspendisse sed tellus vehicula justo convallis interdum. Aliquam erat volutpat. Etiam at dapibus leo. Nulla id arcu eget nibh blandit mollis sit amet euismod libero. Quisque sit amet vestibulum metus, ac lacinia lacus. Donec condimentum laoreet ante. Pellentesque vel mauris iaculis, elementum risus a, dignissim enim. Etiam et mauris vitae eros pulvinar scelerisque.',
      kota: 'Cibaduyut'),
];
