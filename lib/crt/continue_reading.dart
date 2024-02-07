import 'package:shared_preferences/shared_preferences.dart';

// This class is used to save and load the current page of the PDF
class ContinueReading {
  //? This method saves the current page to the shared preferences
  void saveCurrentPage(int page) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentPage', page);
  }

  //? This method loads the current page from the shared preferences
  Future<int> loadCurrentPage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int page = prefs.getInt('currentPage') ?? 1;
    return page;
  }
}
