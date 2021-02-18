<?php
echo "--- DATABASE Trucorp---";

$link = mysqli_connect("172.17.0.3","root","sql101","Trucorp");

$query = "SELECT * FROM users";
$result = $link->query($query);

if (!$link)
{
        echo "<br>";
        echo "tidak bisa connect ke MySQL";
        die("Connection Failed !" . mysqli_connect_error());

}
else
{
        echo "<br>";
        echo "Terkoneksi ke SQL";
        echo "<br>";

                foreach($result as $print)
                {
                        echo "<br>";
                        echo "ID: ". $print["ID"]. "<br>Nama: ". $print["Nama"]. "<br>Kantor(Pusat|Cabang): ". $print["Kantor"];
                        echo "<br>";
                }
                echo"<br>";
                echo "semua data telah diprint";
                echo "<br>";

}

mysqli_close($link);

?>




