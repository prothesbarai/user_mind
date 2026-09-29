import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

class UserProvider extends ChangeNotifier {
  final Box _box = Hive.box("usageBox");


  // >>> Finds the previous usage of a specific page .... Adds 1 and saves again
  void incrementUsage(String pageName){
    int currentPage = _box.get(pageName,defaultValue: 0);
    _box.put(pageName, currentPage + 1);
    notifyListeners();
  }


  // >>> Returns the number of times a specific page has been accessed.
  int getUsage(String pageName){
    return _box.get(pageName, defaultValue: 0);
  }


  // >>> Gets a list of pages . Sorts in descending order by usage .Shows the most used pages first
  List<String> getSortedPages(List<String> pages){
    List<String> sorted = List.from(pages);
    sorted.sort((a,b)=> getUsage(b).compareTo(getUsage(a))); // Descending Order
    return sorted;
  }


  
}