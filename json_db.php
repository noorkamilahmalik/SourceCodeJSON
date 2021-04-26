<html>  
      <head>  
           <title>JSON to MYSQL</title> 
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
     <style>
   
   .box
   {
    width:650px;
    padding:20px;
    background-color:#fff;
    border:1px solid #ccc;
    border-radius:6px;
    margin-top:100px;
   }
  </style>
      </head>  
      <body>  
        <div class="container box">
          <h3 align="center">Menyimpan Data JSON ke Database</h3><br />
          <?php
          $connect = mysqli_connect("localhost", "root", "", "wisata"); //Koneksi ke database
          $query = '';
          $table_data = '';
          $filename = "wisatajogja.json";
          $data = file_get_contents($filename); //membaca file JSON di PHP
          $array = json_decode($data, true); //Mengkonversi string JSON ke Array
          foreach($array as $row) //Mengekstrak array
          {
           $query .= "INSERT INTO jogja(nama, jenis, harga, alamat) VALUES ('".$row["nama"]."', '".$row["jenis"]."', '".$row["harga"]."', '".$row["alamat"]."'); ";  // Make Multiple Insert Query 
           $table_data .= '
            <tr>
       <td >'.$row["nama"].'</td>
       <td >'.$row["jenis"].'</td>
       <td  class="text-center">'.$row["harga"].'</td>
       <td  >'.$row["alamat"].'</td>
      </tr>'; //Data yang akan tampil di layar
          }
          if(mysqli_multi_query($connect, $query)) //Menjalankan query-query yang dimasukan
    {
     echo '
      <table class="table table-bordered">
        <tr class="success">
         <th width="30%" class="text-center">Nama</th>
         <th width="25%" class="text-center">Jenis</th>
         <th width="20%" class="text-center">Harga</th>
         <th width="50%"  class="text-center">Alamat</th>
        </tr>
     ';
     echo $table_data;  
     echo '</table>';
          }

          ?>
     <br />
         </div>  
      </body>  
 </html>  