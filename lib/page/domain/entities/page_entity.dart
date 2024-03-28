import 'package:page/page/domain/entities/data1_entity.dart';

class PageEntity {
  bool? status;
  Data? data;

  PageEntity({this.status, this.data});

  PageEntity.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}



