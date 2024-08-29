import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:riderapp/shared/models/complain.dart';

class ComplainService extends GetxService {
  static ComplainService to = Get.find();
  final GetStorage _storage = GetStorage('ComplainStorage');
  final complains = <Complain>[].obs;
  @override
  void onInit() async {
    complains.value = listComplainsSortedByDate();
    super.onInit();
  }

  // Add new complain
  void addComplain(Complain complain) {
    final complaints = _getComplains();
    complaints.add(complain);
    _saveComplains(complaints);
    complains.value = listComplainsSortedByDate();
  }

  // Edit existing complain by ID
  void editComplain(String id, Complain updatedComplain) {
    final complaints = _getComplains();
    final complainIndex = complaints.indexWhere((c) => c.uuid == id);

    if (complainIndex != -1) {
      complaints[complainIndex] = updatedComplain;
      _saveComplains(complaints);
    }
    complains.value = listComplainsSortedByDate();
  }

  // Delete complain by ID
  void deleteComplain(String id) {
    final complaints = _getComplains();
    complaints.removeWhere((c) => c.uuid == id);
    _saveComplains(complaints);
    complains.value = listComplainsSortedByDate();
  }

  // List and sort complains by the date they were registered
  List<Complain> listComplainsSortedByDate() {
    final complaints = _getComplains();
    complaints.sort((a, b) => b.time.compareTo(a.time));

    return complaints;
  }

  // Get all complains
  List<Complain> _getComplains() {
    final complainData = _storage.read<List<dynamic>>('complains') ?? [];
    return complainData.map((json) => Complain.fromJson(json)).toList();
  }

  // Save all complains to storage
  void _saveComplains(List<Complain> complaints) {
    final complainData =
        complaints.map((complain) => complain.toJson()).toList();
    _storage.write('complains', complainData);
  }
}
