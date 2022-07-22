class ApiRoutes {
  final String baseUrl;
  ApiRoutes({required this.baseUrl});

  //Authentication
  String get loginUrl => "$baseUrl/login";
  String get signupUrl => "$baseUrl/login";
}
