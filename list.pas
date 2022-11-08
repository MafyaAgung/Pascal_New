program list;  {untuk menampilkan list data karyawan}
 
uses wincrt;
type karyawan=record
  nama: string;
  kelamin: string;
  alamat : string;
end;
var kry: karyawan;
begin
  clrscr;
  write('Masukkan Nama: '); readln(kry.nama);
  write('Masukkan Jenis Kelamin: '); readln(kry.kelamin);
  write('Masukkan Alamat: '); readln(kry.alamat);
  {untuk memasukkan data karyawan}
  writeln(kry.nama);
  writeln(kry.kelamin);
  writeln(kry.alamat);
  {untuk menampilkan data karyawan}
end.
