import 'package:http/http.dart' as http;

class SendGridUtil {
  static sendRegistrationNotification(String email) async {
    Map<String, String> headers = new Map();
    headers["Authorization"] =
    "Bearer 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";
    headers["Content-Type"] = "application/json";

    var url = 'https://api.sendgrid.com/v3/mail/send';
    var response = await http.post(url,
        headers: headers,
        body:
        "{\n          \"personalizations\": [\n            {\n              \"to\": [\n                {\n                  \"email\": \"jyothiserror@gmail.com\"\n                },\n                {\n                  \"email\": \"darran@gmailxxx.com\"\n                }\n              ]\n            }\n          ],\n          \"from\": {\n            \"email\": \"app@liftaixxx.com\"\n          },\n          \"subject\": \"New user registration\",\n          \"content\": [\n            {\n              \"type\": \"text\/plain\",\n              \"value\": \"New user register: $email\"\n            }\n          ]\n        }");
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}