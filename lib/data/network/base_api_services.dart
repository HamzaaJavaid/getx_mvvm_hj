

abstract class BaseApiServices{


  Future<dynamic> getDataFromApi(String url);

  Future<dynamic>  postDataFromApi(var body , String url);

}