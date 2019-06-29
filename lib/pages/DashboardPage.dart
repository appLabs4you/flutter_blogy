import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  double width = 0.0;
  double height = 0.0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          //SearchBar
          Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type here to search...",
                    hintStyle: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white70,
                        fontStyle: FontStyle.italic),
                    suffixIcon: Icon(Icons.search, color: Colors.white70),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.orangeAccent, Colors.amber],
                ),
              )),
          // Expanded(
          //   child:
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.amber, Colors.orangeAccent],
              ),
            ),
            height: height * 0.35,
            child: _getPageView(),
          ),
          //  flex: 5),
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xFFE5E4E2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Categories",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Icon(Icons.arrow_forward, color: Colors.black38)
              ],
            ),
          ),
          Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Color(0xFFF0F8FF),
                child: Column(
                  children: <Widget>[
                    Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Expanded(
                              child: _getCardWidget(
                                  0, "Food & Drink", 'images/food.png'),
                              flex: 2,
                            ),
                            Expanded(
                              child: _getCardWidget(
                                  1, "Fitness", 'images/fitness.png'),
                              flex: 2,
                            ),
                            Expanded(
                              child: _getCardWidget(
                                  2, "Technology", 'images/technology.png'),
                              flex: 2,
                            )
                          ],
                        )),
                    Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Expanded(
                              child: _getCardWidget(
                                  4, "Health", 'images/health.png'),
                              flex: 2,
                            ),
                            Expanded(
                              child: _getCardWidget(
                                  5, "Finance", 'images/fianace.png'),
                              flex: 2,
                            ),
                            Expanded(
                              child: _getCardWidget(
                                  6, "Leisure", 'images/tree.png'),
                              flex: 2,
                            )
                          ],
                        ))
                  ],
                ),
              ),
              flex: 6),
        ],
      ),
    );
  }

  Widget _getCardWidget(int i, String textValue, String imsgeValue) {
    return InkWell(
      onTap: () {
        print("tapped" + i.toString());
      },
      child: Card(
        margin: EdgeInsets.all(8.0),
        elevation: 2,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(imsgeValue, width: 36.0, height: 36.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(textValue,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    )),
              )
            ],
          ),
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _getPageView() {
    return PageView(
      children: <Widget>[
        _getPagerViewChild("images/ab.jpg"),
        _getPagerViewChild("images/b.jpg"),
        _getPagerViewChild("images/c.jpg")
      ],
      scrollDirection: Axis.horizontal,
      pageSnapping: true,
      physics: BouncingScrollPhysics(),
      controller: PageController(
        viewportFraction: 0.9,
        initialPage: 0,
      ),
      onPageChanged: (num) {
        print("Current page number is " + num.toString());
      },
    );
  }

  Widget _getPagerViewChild(String bannerImage) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Container(
              padding:
                  EdgeInsets.only(left: 5.0, right: 5.0, top: 10, bottom: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(bannerImage, fit: BoxFit.fill),
              ),
            ),
          ),
         Padding(
            padding: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 5.0, bottom: 10.0),
            child: SizedBox(
                width: double.infinity,
                height: 30,
                child: Text(
                    "Restaurant Brands secured the New Zealand franchise for Starbucks Coffee in 1998. ",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ))),
          )
        ],
      ),
    );
  }
}
