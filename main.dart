// TP1 Pemrograman Visual Alfen Fajri Nurulhaq 2201431 C2

class Hewan {//buat kelas hewan
  String _nama;///buat atribut private nama
  int _usia;///buat atribut private usia

  Hewan(this._nama, this._usia);///constructor Hewan

  void mengeluarkanSuara() {///method untuk hewan mengeluarkanSuara
    print('Suara hewan');
  }
///getter
  String get nama => _nama;
  int get usia => _usia;
}

class Anjing extends Hewan {//Anjing subclass dari hewan
  String _rasAnjing;// properti rasAnjing 

  Anjing(String nama, int usia, this._rasAnjing) : super(nama, usia);//constrcuctor ditambahkan super dari superclass hewan

  void menggonggong() {//method mengonggong
    print('Guk! Guk!\n');
  }

  @override
  void mengeluarkanSuara() {//method mengeluarkan suara
    print('Anjing menggonggong');
    menggonggong();
  }

  String get rasAnjing => _rasAnjing;//getter rasAnjing
}

class Kucing extends Hewan {//Kucing kelas dari hewan
  String _rasKucing;//properti rasKucing

  Kucing(String nama, int usia, this._rasKucing) : super(nama, usia);//constrcuctor ditambahkan super dari superclass hewan

  void mengeong() {//method mengeong
    print('Meong! Meong!\n');
  }

  @override
  void mengeluarkanSuara() {//method mengeluarkan suara
    print('Kucing Mengeong');
    mengeong();
  }

  String get rasKucing => _rasKucing;//getter
}

Future<void> main() async {
  print('Membuat seekor anjing...');
  final anjing = Anjing('Dadang', 3, 'Pitbull');//instansiasi anjing
  print('Membuat seekor kucing...');
  final kucing = Kucing('Suparlan', 2, 'Anggora');//instansiasi kucing
  // Mensimulasikan tugas asynchronous (contoh: mengambil data dari server)
  await fetchData(anjing, kucing);//ambil data nya pura puranya ambil data dari server menngunakan async await supaya terlihat synchronous
  print('Program selesai.');
}

Future<void> fetchData(Anjing anjing, Kucing kucing) async {
  print('\nMengambil data...');
  await Future.delayed(Duration(seconds: 3));//kasih future durasii 3 detik
  print('Data terambil!\n');
  print('Tampilkan Data\n');
  await Future.delayed(Duration(seconds: 2));//kasih future durasii 2 detik
  print('Data Anjing:');
  print('Nama: ${anjing.nama},\nUsia: ${anjing.usia},\nRas: ${anjing.rasAnjing}\n');//tampilkan data anjing
  print('Data Kucing:');
  print('Nama: ${kucing.nama},\nUsia: ${kucing.usia},\nRas: ${kucing.rasKucing}\n');//tampilkan data kucing
  //panggil method suara
  print('Anjing sedang mengeluarkan suara!');
  anjing.mengeluarkanSuara();
  print('Kucing sedang mengeluarkan suara!');
  kucing.mengeluarkanSuara();
}
