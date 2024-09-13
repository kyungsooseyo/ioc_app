// 定义list的类型
class DataItem {
  /// 标题
  final String title;

  /// ## 描述
  final String description;
  final String route;
  final String url;

  DataItem({
    required this.title,
    required this.description,
    required this.route,
    required this.url,
  });
}

List<DataItem> list = [
  DataItem(
      title: "Practice Wrap",
      description: "This is a practice of Wrap widget",
      route: "/practice_wrap",
      url: "https://cdn2.thecatapi.com/images/MTYwNjYwMg.jpg"),
  DataItem(
      title: "Practice ListView",
      description: "This is a practice of ListView widget",
      route: "/practice_list_view",
      url: "https://cdn2.thecatapi.com/images/JYLVJkyq_.jpg"),
  DataItem(
      title: "Practice ListView2",
      description: "This is a practice of ListView widget",
      route: "/practice_list_view2",
      url:
          "https://park4-visitor-uat.s3.cn-north-1.jdcloud-oss.com/image/home/logo.png")
];
// List list = [
//   {
//     "title": "Practice Wrap",
//     "description": "This is a practice of Wrap widget",
//     "route": "/practice_wrap",
//     "url": "https://cdn2.thecatapi.com/images/MTYwNjYwMg.jpg"
//   },
//   {
//     "title": "Practice ListView",
//     "description": "This is a practice of ListView widget",
//     "route": "/practice_list_view",
//     "url": "https://cdn2.thecatapi.com/images/JYLVJkyq_.jpg"
//   },
//   {
//     "title": "Practice ListView2",
//     "description": "This is a practice of ListView widget",
//     "route": "/practice_list_view2",
//     "url":
//         "https://park4-visitor-uat.s3.cn-north-1.jdcloud-oss.com/image/home/logo.png"
//   }
// ];
