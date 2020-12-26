int[] values;

int i = 1;

void setup() {
  // buat playgroud
  size(700, 400);
  // set nilai values sama dengan nilai width dari size
  values = new int[width];
  for (int i = 0; i < values.length; i++){
    // masukan angka acak sesaui dengan indeks values
    values[i] = int(random(height));
    // print nilai values berdasarkan indeks ke console
    print(values[i] + ", ");
  }
}

void draw() {
  // set warna background playground
  background(0);
  // set warna text
  fill(225);
  // set ukuran text
  textSize(20);
  // tambahkan teks i
  // dikordinat tinggi: 20, lebar: 20 dari playground
  text(i,20,20);
  // jika nilai i kurang dari panjang values
  if(i < values.length) {
    // inisialisasi nilai key sama dengan values indeks ke i
    int key = values[i];
    // inisialisasi nilai j sama dengan i kurang 1
    int j = i -1;
    
    // selama nilai nilai dari j lebih dari 0 dan nilai values
    // indeks ke j lebih dari key
    while(j >= 0 && values[j] > key) {
      // proses swapping
      // nilai dari values indeks j + 1
      // di isi dengan values indeks ke j
      values[j+1] = values[j];
      // set nilai j dikurangi 1;
      j = j -1;
    }
    // set kembali nilai values indeks ke j + 1 menjadi key
    values[j + 1] = key;
  } else {
    // jika kondisi if tidak terpenuhi perulangan di hentikan
    noLoop();
    print("finish");
  }
  // selama perulangan berlangsung i akan ditambah 1
  i++;
  
  
  // draw
  for (int i = 0; i < values.length; i++){
    // set warna stroke menjadi putih(255)
    stroke(255);
    // set line dengan nilai dari perulangan
    line(i, height, i, height - values[i]);
  }  
}
