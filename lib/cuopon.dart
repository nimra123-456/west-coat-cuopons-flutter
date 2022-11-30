class Cuopon{
  late String name;
  late String categoryName;
  late String expiryDate;
  late String couponsType;
  late String storeName;
  late String cuponDetail;

  late StoreImage storeImage; 



  Cuopon({required this.name,required this.categoryName,required this.couponsType,required this.expiryDate,required  this.storeImage,required this.storeName, required this.cuponDetail});
 factory  Cuopon.fromJson(Map<String,dynamic> map ){
  return Cuopon(cuponDetail:map["coupon_detail"],name: map[ "coupon_name"], categoryName:map[ "category_name"], couponsType: map["coupon_type"], expiryDate: map["expiry_date"], storeImage: StoreImage.fromJson(map["store_image"]), storeName: map["store_name"]);
  

 }






}
class StoreImage{
  late String id;
  late String postAuthor;
  late String postDate;
 
  late String postTitle;


  StoreImage({required this.id,required this.postAuthor,required this.postDate,required this.postTitle});
  factory StoreImage.fromJson(Map<String,dynamic> map ){
    StoreImage str = StoreImage(id: map["ID"], postAuthor: map["post_author"],  postDate: map["post_date"], postTitle: map[ "post_title"]);
    print("store Image:$str");
    return str;
  }


}