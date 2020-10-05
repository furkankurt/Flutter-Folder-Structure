import 'package:flutter/material.dart';

// Projede kullanilacak renkleri de bir dosyada tutarak tum projede kullandigimizda
// renklerde bir degisiklik oldugunda tum kodlarda degil sadece bu dosyada renk kodunu
// degistirmemiz yeterli olacaktir.
// Nesneleri static olarak yaparsak da AppColors.mainColor gibi parantezsiz olarak kullanabiliriz.

class AppColors {
// Renk kodumuz hex olarak ornegin #E62A53 olsun. Flutter'da bu kodu kolaylikla kullanabiliriz.
// renk kodunu # olmadan alip bir Color() nesnesi icine kodun basinda "0xff" koyarak kullanabiliriz.
// Ornek=> Color(0xffE62A53);

  static Color mainColor = Color(0xffE62A53);
  static Color primaryBlueColor = Color(0xff276EF1);
  static Color secondGreyBlueColor = Color(0xff5E6C84);
  static Color blackColor = Color(0xff4d4d4d);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color scaffoldColor = Color(0xffffffff);
}
