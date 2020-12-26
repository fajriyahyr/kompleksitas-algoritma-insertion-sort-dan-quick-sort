void setup() {
  size(800, 600);
  values = new float[width];
  for (int i = 0; i < values.length; i++) {
    values[i] = random(0, height);
  }
}



public class QuickSort {

    static void quickSort (int a[], int lo, int hi){
    //  lo adalah index bawah, hi adalah index atas
    //  dari bagian array yang akan di urutkan
        int i=lo, j=hi, h;
        int pivot=a[lo];

    
        do{
            while (a[i]<pivot) i++;
            while (a[j]>pivot) j--;
            if (i<=j)
            {
                h=a[i]; a[i]=a[j]; a[j]=h;//tukar
                i++; j--;
            }
        } while (i<=j);

    //  pengurutan
        if (lo<j) quickSort(a, lo, j);
        if (i<hi) quickSort(a, i, hi);
    }

    
   

}
void draw() {
  background(0);
  for (int i = 0; i < values.length; i++) {
    stroke(255);
    line(i, height, i, height - values[i]);
  }
  quickSort(values, 0, values.length - 1);
}
