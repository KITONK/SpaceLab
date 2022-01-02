import 'audio.dart';

class Selection {
  String? title;
  String ? photo;
  DateTime? addDate;
  List<Audio>? audios;
  DateTime? timeAudio;
  String? description;

  Selection({
    this.title,
    this.photo,
    this.addDate,
    this.audios,
    this.timeAudio,
    this.description,
  });

  Selection.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    photo = json['Photo'];
    addDate = json['AddDate'];
    if(json['Audios'] != null) {
      audios = <Audio>[];
      json['Audios'].forEach((v) {
        audios!.add(Audio.fromJson(v));
      });
    }
    timeAudio = json['TimeAudio'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Title'] = title;
    data['Photo'] = photo;
    data['AddDate'] = addDate;
    if(audios != null) {
      data['Audios'] = audios!.map((e) => e.toJson()).toList();
    }
    data['TimeAudio'] = timeAudio;
    data['Description'] = description;
    return data;
  }

}
