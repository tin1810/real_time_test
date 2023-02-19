// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:core';

class Noti {
  String? vendorKey;
  RealNotification? realNotification;
  Noti({this.vendorKey, this.realNotification});
}

class RealNotification {
  int? cancel;
  int? complete;
  int? news;
  int? processing;
  String? key;

  RealNotification(
      {this.cancel, this.complete, this.news, this.processing, this.key});

  RealNotification.fromJson(Map<dynamic, dynamic> json) {
    cancel = json['cancel'];
    complete = json['complete'];
    news = json['new'];
    processing = json['processing'];
    key = json[''];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['cancel'] = this.cancel;
    data['complete'] = this.complete;
    data['new'] = this.news;
    data['processing'] = this.processing;
    data[''] = this.key;
    return data;
  }
}
