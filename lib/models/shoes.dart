import 'dart:ffi';
class Shoes {
  String name, kategori, description;
  BigInt harga;
  int jumlah;
  List image;

  Shoes({
    required this.name,
    required this.kategori,
    required this.harga,
    required this.jumlah,
    required this.description,
    required this.image
  });
}

var shoesList = [
  Shoes(
    name: "Basic",
    kategori: "Ventela",
    jumlah: int.parse("10"),
    harga: BigInt.parse("190000"),
    description: "Upper 12 oz canvas, Thread nylon, Tnsole eva foam, Outsole rubber.",
    image: [
      'assets/sepatu_1.png',
      'assets/sepatu_2.png',
      'assets/sepatu_3.png'
    ]
  ),
  Shoes(
      name: "Ethnic",
      kategori: "Ventela",
      jumlah: int.parse("19"),
      harga: BigInt.parse("230000"),
      description: "Upper 12 oz canvas, Thread nylon, Tnsole eva foam, Outsole rubber.",
      image: [
        'assets/sepatu_1.png',
        'assets/sepatu_2.png',
        'assets/sepatu_3.png'
      ]
  ),
  Shoes(
      name: "Back to 70's Series",
      kategori: "Ventela",
      jumlah: int.parse("30"),
      harga: BigInt.parse("280000"),
      description: "Upper 12 oz canvas, Thread nylon, Tnsole eva foam, Outsole rubber.",
      image: [
        'assets/sepatu_1.png',
        'assets/sepatu_2.png',
        'assets/sepatu_3.png'
      ]
  ),
  Shoes(
      name: "Ivan",
      kategori: "Patrobas",
      jumlah: int.parse("28"),
      harga: BigInt.parse("240000"),
      description: "Upper canvas, PVC leander, Rubber foxing, Rubber sole.",
      image: [
        'assets/sepatu_1.png',
        'assets/sepatu_2.png',
        'assets/sepatu_3.png'
      ]
  ),
  Shoes(
      name: "Equip",
      kategori: "Patrobas",
      jumlah: int.parse("19"),
      harga: BigInt.parse("200000"),
      description: "Upper canvas, PVC leander, Rubber foxing, Rubber sole.",
      image: [
        'assets/sepatu_1.png',
        'assets/sepatu_2.png',
        'assets/sepatu_3.png'
      ]
  ),
  Shoes(
      name: "Poseidon",
      kategori: "Warrior",
      jumlah: int.parse("13"),
      harga: BigInt.parse("220000"),
      description: "Upper 12 oz canvas, Insole eva phylon, 170cm shoeleces.",
      image: [
        'assets/sepatu_1.png',
        'assets/sepatu_2.png',
        'assets/sepatu_3.png'
      ]
  ),
];