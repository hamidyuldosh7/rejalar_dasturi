import 'package:hive/hive.dart';
import 'package:rejalar_dasturi/models/users.dart';



class HiveStorage {
  static final box = Hive.box<User>("Iqtidor");

  static void storeReja(User reja) {
    box.add(reja);
  }

  static User? loadReja() {
    return box.get("reja");
  }

  static void removeReja() {
    box.delete("reja");
  }
}