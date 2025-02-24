import 'package:isar/isar.dart';

part 'complaint.g.dart';

@Collection()
class Complaint {
  Id id = Isar.autoIncrement; // Auto-generated ID
  late String complaintId;
  late String governmentType;
  late String state;
  late String city;
  late String complaintTo;
  late String ministry;
  late String grievance;
  late String address;
  String? pdf;
  String? image;
  String? video;
}
