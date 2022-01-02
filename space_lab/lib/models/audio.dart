class Audio {
  String ? title;
  DateTime ? timeAudio;

  Audio({this.title, this.timeAudio});

  Audio.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    timeAudio = json['TimeAudio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = title;
    data['TimeAudio'] = timeAudio;
    return data;
  }
}