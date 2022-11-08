Program DataPegawai;
Uses crt;
type
    data_pegawai = record
            kode_peg : string[5];
            nama     : string[15];
            alamat   : string[20];
                        kota     : string[20];
            gaji     : longint;
                  end;
var
    pegawai : array[1..20] of data_pegawai;
    i, n: integer;

Begin
clrscr;
write('Jumlah Pegawai =');readln(n);
For i:=1 to n do
Begin
For i:=1 to n do
Begin
   With pegawai[i] do
      Begin
         write(' Kode   :');readln(kode_peg);
         write(' Nama   :'); readln(nama);
         write(' Alamat :'); readln(alamat);
         write(' Kota   :'); readln(kota);
         write(' Gaji   :'); readln(gaji);
       End;
   End;
End;
Write('Kode   Nama    Alamat     Kota    Gaji'); Writeln;
For i:=1 to n do
Begin
   With pegawai[i] do
      Begin
         write(kode_peg);
         write('   ',nama);
         write('   ',alamat);
         write('   ',kota);
         write('   ',gaji);
       End;
       writeln;
 End;
readkey;
End.
