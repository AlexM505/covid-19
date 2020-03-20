class CarouselImage {
  int id; // image identification
  String link;// image url
  String title;
  String description;

  CarouselImage.create(int _id,String _link,String _title, String _description){
    id = _id;
    link = _link;
    title = _title;
    description = _description;
  }

  CarouselImage.fromJson(Map<String,dynamic> json){
    id = json['id'];
    link = json['link'];
    title = json['title'];
    description = json['description'];
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['id'] = this.id;
    data['link'] = this.link;
    data['title'] = this.title;
    data['description'] = this.description;

    return data;
  }
}

//--- function that allows images to be obtained by connecting to the api
Future<List<CarouselImage>> getchImages() async{
  //--- this code is to consume the api, you only have to specify the address of the api.
  //--- The url must respond by the GET method

  //final response = await http.get('http://10.0.2.2:3000/images');
  //if(response.statusCode == 200){
  //return (json.decode(response.body) as List)
  //  .map((data) => new CarouselImage.fromJson(data))
  //.toList();
  //}else{
  // throw Exception('Failed to load Images');
  //}

  //--- create objects for carousel testing with real images
  List<CarouselImage> items = new List<CarouselImage>();
  CarouselImage item = new CarouselImage.create(1, 'https://i.insider.com/5e34f48e5bc79c2abb3a7be4?width=1100&format=jpeg&auto=webp','Cases','102,300');
  items.add(item);
  CarouselImage item2 = new CarouselImage.create(2, 'https://cdn.vox-cdn.com/thumbor/Xlai7Wo3G3ezFdTpyJnPIxnTgic=/0x0:6048x4024/1200x800/filters:focal(2671x1735:3637x2701)/cdn.vox-cdn.com/uploads/chorus_image/image/66313484/GettyImages_1196292480.0.jpg','DEATHS','30,108');
  items.add(item2);
  CarouselImage item3 = new CarouselImage.create(3, 'https://i.dailymail.co.uk/1s/2020/03/02/23/25451918-8066545-More_people_in_China_have_recovered_from_coronavirus_than_are_cu-a-11_1583190863935.jpg','RECOVERED','80,000');
  items.add(item3);
  return items;

}