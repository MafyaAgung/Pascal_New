program record1;         {judul program bisa di tulis apa saja}
uses crt;

type
      mahasiswa = record
                           nim        :string[8];
                           nama     :string[30];
                           jurusan :string[20];
                           tgl          :string[10];
                           alamat  :string[30];
                           notelp   :string[12];
     end;
var
     mhs :array[1..10] of mahasiswa;
     byk :byte;
     i,j :integer;

begin
clrscr;

txtcolor(10);
writeln('           TUGAS STRUKTUR DATA          ');        {boleh tidak di tulis}
writeln('===========================');
writeln('===========================');
textcolor(15);
write(Masukkan Jumlah Mahasiswa: ');readln(byk);
for i:= 1 to byk do
begin
write('NIM                :');readln(mhs[i].nim);
write('Nama              :');readln(mhs[i].nama);
write('Jurusan          :');readln(mhs[i].jurusan);
write('Tanggal Lahir:');readln(mhs[i].tgl);
write('Alamat            :');readln(mhs[i].alamat);
write('No Telpon      :');readln(mhs[i].notelp);
writeln;
end;
textcolor(10);
for j:= 1 to byk do
begin
writeln('NIM                :',mhs[j].nim);
writeln('Nama              :',mhs[j].nama);
writeln('Jurusan          :',mhs[j].jurusan);
writeln('Tanggal Lahir:',mhs[j].tgl);
writeln('Alamat            :',mhs[j].alamat);
writeln('No Telpon      :',mhs[j].notelp);
writeln;
end;
readln;
end.
