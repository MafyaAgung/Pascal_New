program recordarray;
uses crt;
type
almt=record
jalan:string;
desa:string;
end;
tgl=record
tanggal:integer;
bulan:string[15];
tahun:integer;
end;
mahasiswa= record
nim:string[8];
nama:string[30];
jurusan:string[20];
alamat:almt;
telp:longint;
tg:tgl  ;
umur:integer;
end;
var
recmhs: array[1..100] of mahasiswa;
byk,i,j:integer;
begin
clrscr;
write(‘Masukkan Jumlah Mahasiswa : ‘); readln(byk);
writeln;
for i:=1 to byk do
begin
with recmhs[i] do
begin
writeln(‘Mahasiswa ke-‘,i);
writeln;
write(‘Masukan NIM     : ‘); readln(nim);
write(‘Masukan Nama    : ‘); readln(nama);
write(‘Masukan Jurusan : ‘); readln(jurusan);
writeln(‘Masukan Lamat Anda’);
write(‘Masukan Jalan   : ‘); readln(alamat.jalan);
write(‘Masukan Desa    : ‘); readln(alamat.desa);
write(‘Masukan Telepon : ‘); readln(telp);
writeln(‘Masukan Tanggal Lahir Anda’);
write(‘MAsukan Tanggal : ‘); readln(tg.tanggal);
write(‘MAsukan Bulan   : ‘); readln(tg.bulan);
write(‘Masukan Tahun   : ‘); readln(tg.tahun);
writeln;
umur:=2015-tg.tahun;
end;
end;
writeln;
writeln;
writeln(‘Data Yang Dimasukan’);
writeln;
for j:=1 to byk do
begin
with recmhs[j] do
begin
writeln(‘Mahasiswa ke-‘,j);
writeln;
writeln(‘NIM                 : ‘, nim);
writeln(‘Nama                : ‘, nama);
writeln(‘Jurusan             : ‘, jurusan);
writeln(‘Alamat              : ‘, alamat.jalan,’ ‘, alamat.desa);
writeln(‘Telepon             : ‘,telp);
writeln(‘Tanggal Lahir       : ‘, tg.tanggal,’ ‘ , tg.bulan ,’ ‘ , tg.tahun);
writeln(‘Umur Pada Tahun Ini : ‘,umur);
writeln;
end;
end;
readln;
end.
