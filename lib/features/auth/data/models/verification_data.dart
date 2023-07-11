import 'dart:convert';

class VerificationData {
  final String? universityName;
  final String? matriculationYear;
  final String? graduationYear;
  final String? lawSchoolBranch;
  final String? lawSchoolStartYear;
  final String? lawSchoolEndYear;
  final String? nbaBranch;
  final String? ctbDate;
  final String? supremeNumber;
  final String? currentOrg;
  final String? lawyerFee;
  final String? practiceLocation;
  final String? practiceArea;

  VerificationData({
    required this.universityName,
    required this.matriculationYear,
    required this.graduationYear,
    required this.lawSchoolBranch,
    required this.lawSchoolStartYear,
    required this.lawSchoolEndYear,
    required this.nbaBranch,
    required this.ctbDate,
    required this.supremeNumber,
    required this.currentOrg,
    required this.lawyerFee,
    required this.practiceLocation,
    required this.practiceArea,
  });

  factory VerificationData.fromJson(String source) {
    final data = json.decode(source);

    return VerificationData(
      universityName: data['universityName'],
      matriculationYear: data['matriculationYear'],
      graduationYear: data['graduationYear'],
      lawSchoolBranch: data['lawSchoolBranch'],
      lawSchoolStartYear: data['lawStartYear'],
      lawSchoolEndYear: data['lawEndYear'],
      nbaBranch: data['nbaBranch'],
      ctbDate: data['ctbDate'],
      supremeNumber: data['supremeNumber'],
      currentOrg: data['currentOrg'],
      lawyerFee: data['lawyerFee'],
      practiceLocation: data['location_of_practice'] ?? '',
      practiceArea: data['area_of_practice'] ?? '',
    );
  }

  String get toJson {
    return json.encode({
      'universityName': universityName,
      'matriculationYear': matriculationYear,
      'graduationYear': graduationYear,
      'lawSchoolBranch': lawSchoolBranch,
      'lawStartYear': lawSchoolStartYear,
      'lawEndYear': lawSchoolEndYear,
      'nbaBranch': nbaBranch,
      'ctbDate': ctbDate,
      'supremeNumber': supremeNumber,
      'currentOrg': currentOrg,
      'lawyerFee': lawyerFee,
      'location_of_practice': practiceLocation,
      'area_of_practice': practiceArea,
    });
  }
}
