class Delivery {
  String postedByName;
  String postedByProfilePic;
  String timeAgo;
  List<String> imageList;
  String description;
  int clapsCount;
  int shareIcon;

  Delivery(
      {this.postedByName,
        this.postedByProfilePic,
        this.timeAgo,
        this.imageList,
        this.description,
        this.clapsCount,
        this.shareIcon});

  Delivery.fromJson(Map<String, dynamic> json) {
    postedByName = json['postedByName'];
    postedByProfilePic = json['postedByProfilePic'];
    timeAgo = json['timeAgo'];
    imageList = json['imageList'].cast<String>();
    description = json['description'];
    clapsCount = json['clapsCount'];
    shareIcon = json['shareIcon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postedByName'] = this.postedByName;
    data['postedByProfilePic'] = this.postedByProfilePic;
    data['timeAgo'] = this.timeAgo;
    data['imageList'] = this.imageList;
    data['description'] = this.description;
    data['clapsCount'] = this.clapsCount;
    data['shareIcon'] = this.shareIcon;
    return data;
  }
}