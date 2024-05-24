class FakeMockup {
  String getSuccessJson() => '''
    {
      "result": {
        "status": 200,
        "message_code": "success",
        "message": "Success",
        "dt": "2023-02-01 10:00:00"
      }
      "data": {}
    }
    ''';
  String getErrorJson() => '''
    {
      "result": {
        "status": 400,
        "message_code": "fail",
        "message": "Unexpected Error",
        "dt": "2023-02-01 10:00:00"
      }
    }
    ''';
}
