import '../utils/enum.dart';

String? baseUrl;
String? apiBase;

// Initialize API Bases for PRODUCTION or for STAGING
void initApi(Environment env) {
  switch (env) {
    case Environment.production:
      baseUrl = '';
      apiBase = '';
      break;

    case Environment.staging:
      baseUrl = '';
      apiBase = '';
      break;
  }
}
