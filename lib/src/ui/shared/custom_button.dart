import 'package:flutter/material.dart';
import 'package:folder_structure/src/config/theme/app_colors.dart';

// Her sayfada ozellestirdigimiz widget'in tum kodlarini kopyala yapistir yapmak yerine
// Kod kalabaligi olmasin diye tek bir widgeti ozellestirip  birden fazla sayfada kullanabiliriz.

class CustomButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color titleColor;
  final bool isExpanded;
  final bool isSmall;
  final double fontSize;
  final double height;
  final GlobalObjectKey key;
  final Widget icon;
  final BorderRadius radius;

  CustomButton(
      {@required this.title,
      @required this.onPressed,
      this.backgroundColor,
      this.titleColor,
      this.isExpanded: true,
      this.fontSize,
      this.height,
      this.isSmall: false,
      this.icon,
      this.key,
      this.radius})
      : assert(title != null && onPressed != null);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: widget.isExpanded ? double.infinity : MediaQuery.of(context).size.width / 2,
      height: 50,
      child: RaisedButton(
        elevation: 0,
        key: widget.key ?? null,
        shape: RoundedRectangleBorder(borderRadius: widget.radius ?? BorderRadius.circular(50)),
        onPressed: widget.onPressed,
        color: widget.backgroundColor ?? AppColors.whiteColor,
        child: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.icon ?? Container(),
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: widget.fontSize ?? 14,
                  color: widget.titleColor ?? AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
