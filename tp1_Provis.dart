class UTS{
  String nama = "";
  String matkul = "";
  int nilai = 0;
  
  UTS(){
  }
  
  void detailUTS(){
    print("Nama : $nama");
    print("Mata Kuliah : $matkul");
    print("Nilai UTS : $nilai");
  }
}

void main(){
  UTS uts = UTS()
    ..nama = "Tiara"
    ..matkul = "Metode Numerik"
    ..nilai = 90;
  uts.detailUTS();
  
  getNilai(90).then((String hasil){
    print("Selamat!");
    print(hasil);
  });
  
  
}

Future<String> getNilai(int nilai){
  int kkm = 70;
  
  return Future.delayed(Duration(seconds: 2),(){
    if (kkm < nilai){
      return "Lulus UTS dengan nilai $nilai";
    } else {
      return "Tidak Lulus UTS, nilai anda $nilai";
    }
  });
}