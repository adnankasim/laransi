<?php
    function terbilang($x)
    {
        $angka = ["", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas"];
        if ($x < 12)
          return " " . $angka[$x];
        elseif ($x < 20)
          return terbilang($x - 10) . " belas";
        elseif ($x < 100)
          return terbilang($x / 10) . " puluh" . terbilang($x % 10);
        elseif ($x < 200)
          return "seratus" . terbilang($x - 100);
        elseif ($x < 1000)
          return terbilang($x / 100) . " ratus" . terbilang($x % 100);
        elseif ($x < 2000)
          return "seribu" . terbilang($x - 1000);
        elseif ($x < 1000000)
          return terbilang($x / 1000) . " ribu" . terbilang($x % 1000);
        elseif ($x < 1000000000)
          return terbilang($x / 1000000) . " juta" . terbilang($x % 1000000);
        elseif ($x < 1000000000000)
          return terbilang($x / 1000000000) . " milyar" . terbilang($x % 1000000000);
        elseif ($x < 1000000000000000)
          return terbilang($x / 1000000000000) . " triliun" . terbilang($x % 1000000000000);
      }
?>