import 'package:news_api/models/category_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();

  //1
  categoryModel.categoryName = 'Business';
  categoryModel.imageUrl = 'images/business.jpg';
  category.add(categoryModel);

  //2
  categoryModel = new CategoryModel();
  categoryModel.categoryName='Entertainment';
  categoryModel.imageUrl = 'images/entertainment.jpg';
  category.add(categoryModel);

  //3
  categoryModel = new CategoryModel();
  categoryModel.categoryName='General';
  categoryModel.imageUrl = 'images/general.jpg';
  category.add(categoryModel);

  //4
  categoryModel = new CategoryModel();
  categoryModel.categoryName='Health';
  categoryModel.imageUrl = 'images/health.jpg';
  category.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName='Science';
  categoryModel.imageUrl = 'images/science.jpg';
  category.add(categoryModel);

  //6
  categoryModel = new CategoryModel();
  categoryModel.categoryName='Sports';
  categoryModel.imageUrl = 'images/sports.jpg';
  category.add(categoryModel);

  //7
  categoryModel = new CategoryModel();
  categoryModel.categoryName='Technology';
  categoryModel.imageUrl = 'images/technology.jpg';
  category.add(categoryModel);

  return category;
}