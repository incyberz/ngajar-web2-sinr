<h2>Tampil Data Pendaftar</h2>
<?php
$s = "SELECT * FROM tb_pendaftar";
$q = mysqli_query($conn, $s) or die(mysqli_error($conn));

$tr = '';
$no = 0;
while ($d = mysqli_fetch_assoc($q)) {
  $no++;
  // echo $d['nama'] . "<br>";
  $tr .= "
    <tr>
      <td>$no</td>
      <td>$d[nama]</td>
      <td>$d[ip_address]</td>
      <td>$d[tipe_gadget]</td>
      <td>$d[date_created]</td>
    </tr>

  ";
}

echo "
  <table class='table table-striped table-hover'>
    <thead>
      <th>No</th>
      <th>Nama</th>
      <th>IP Address</th>
      <th>Tipe Gadget</th>
      <th>Date Created</th>
    </thead>
    $tr
  </table>
";
