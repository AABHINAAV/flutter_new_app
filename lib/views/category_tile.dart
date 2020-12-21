import 'package:flutter/material.dart';
import 'package:news_api/views/category_view.dart';

class CategoryTile extends StatelessWidget {
  // creating variables
  final String imageUrl, categoryName;

  // catching data
  CategoryTile({this.imageUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CategoryNews(
                    categoryName: categoryName,
                  )),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                imageUrl,
                height: 60,
                width: 120,
                fit: BoxFit.fill,
              ),
              // child: CachedNetworkImage(
              //   imageUrl: imageUrl,
              //   height: 60,
              //   width: 120,
              //   fit: BoxFit.fill,
              // ),
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black26,
              ),
              child: Text(
                categoryName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
