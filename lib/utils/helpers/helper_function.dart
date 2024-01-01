import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SHelperFunctions {

  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    }
    return null;
  }

  static void showSnackBar(String message){
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert(String title, String msg) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(msg),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Ok'))
            ],
          );
        });
  }


  static void navigateToScreen(BuildContext context, Widget screen){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );

  }

  static String truncateText(String text, int maxLenght){
     if(text.length <= maxLenght){
       return text;
     }else{
       return '${text.substring(0, maxLenght)}...';
     }
  }

  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date, {String format = 'dd MMM yyyy'}){
    return DateFormat(format).format(date);

  }

  static List<T> removeDuplicates<T>(List<T> list){
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widget, int rowSize){

    final wrappedList = <Widget>[];
    for(var i = 0; i < widget.length; i += rowSize){
      final rowChildren = widget.sublist(i, i + rowSize > widget.length ? widget.length: i + rowSize);
      wrappedList.add(Row(children: rowChildren));

    }

    return wrappedList;
  }






}
