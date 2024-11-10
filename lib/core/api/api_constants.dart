
class ApiConstants {
  // Base URL
  static const String baseUrl = 'https://dev.api.kursol.uz';

  // Auth endpoints
  static const String login = '/api/auth/login';
  static const String register = '/api/auth/register';

  // Courses endpoints
  static const String courses = '/api/coursess';
  static String courseDetail(String uuid) => '/api/coursess/$uuid';
  static const String courseSections = '/api/courseSections';
  static String courseSection(String uuid) => '/api/courseSections/$uuid';


}
