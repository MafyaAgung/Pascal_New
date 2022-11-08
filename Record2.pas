program record;
uses crt;

type recMahasiswa = record
    nama:string;
end;

var
    mahasiswa :array[1..999] of recMahasiswa;
    nim,loop,inp_jml_mhs,tot:integer;
    jumlahIPK, rata: real;
    ipk:array[1..100] of real;
begin
    clrscr;
    // Judul
    Writeln('Program Menghitung Rata-Rata Beberapa Mahasiswa/i');
    Writeln('_________________');
    WriteLn();
    // Tempat Input Jumlah Mahasiswa oleh user
    Write('Masukkan Jumlah Mahasiswa : ');
    readln(inp_jml_mhs);
    WriteLn();
    // Looping
    for loop := 1 to inp_jml_mhs do
    begin
        with mahasiswa[loop] do
        begin
            // Urutan Mahasiswa
            writeln('Data ke-', loop);
            // Input Data Mahasiswa
            write('Input Nama : ');readln(nama);
            write('Input NIM : ');readln(nim);
            write('Input IPK  : ');readln(ipk[loop]);
            ipk:=ipk
        end;
    WriteLn();
    end;
    begin
        writeln('-----------------');
    end;

    // Output Nama,nim,dan IPK Mahasiswa
    writeln;
    for loop := 1 to inp_jml_mhs do
    begin
        with mahasiswa[loop] do
        begin
            writeln('Data ke-', loop);
            writeln('Nama : ', nama);
            writeln('NIM : ', nim);
            writeln('IPK  : ',ipk[loop]:2:2);
        end;
        writeln;
    end;

    // hitung rata rata mahasiswa
    jumlahIPK := 0;
    for loop := 0 to inp_jml_mhs do
    begin
        jumlahIPK := jumlahIPK + ipk[loop+1];
    end;

    rata:= jumlahIPK / inp_jml_mhs;

    writeln('Jumlah IPK ',loop, ' Mahasiswa : ',jumlahIPK:2:2);
    writeln('Rata-Rata IPK ',loop, ' Mahasiswa : ',rata:2:2);
    readln;
end.
