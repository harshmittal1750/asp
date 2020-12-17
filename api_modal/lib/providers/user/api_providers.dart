import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

import 'api_model.dart';

class Api with ChangeNotifier {
  ApiCall apiCall;

  ApiCall get api {
    return apiCall;
  }

  Future<ApiCall> getApi() async {
    var response = await http.Client()
        .get("https://api.v2.credflow.in/api/view/user", headers: {
      "x-auth-token":
          "eyJhbGciOiJIUzI1NiJ9.MQ.hVvrS2RpUYkMzi89U147FWjiu4H1XQJFljqluuqwFQw",
      "organization_id": "371",
    });
    print("MY response ${response.body}");
    var res = json.decode(response.body);
    print(res);
    apiCall = ApiCall.fromJson(res);
    print(api.organizationId);
    notifyListeners();
    return apiCall;
  }
}
