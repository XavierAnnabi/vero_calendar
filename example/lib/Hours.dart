




import 'package:flutter/material.dart';

import 'Item.dart';

class Hours extends StatefulWidget {
  Hours({Key key, @required this.defaultColor}) : super(key: key);
  final bool defaultColor;

  @override
  _HoursState createState() => _HoursState();
}

class _HoursState extends State<Hours> {
  List<Item> hours_ = new List<Item>();

  List<String> HoursList() {
    Item xItem = new Item("12", "AM");
    String isAP = "AM";
    Item xItem_;
    hours_.add(xItem);
    int index = 1;
    while (index < 24) {
      xItem_ = new Item(index.toString(), isAP);

      if (index == 12) isAP = "PM";

      if (index > 12) {
        xItem_.id = (index - 12).toString();
      } else {}

      hours_.add(xItem_);
      index++;
    }
//hours_
  }

  @override
  void initState() {
    hours_ = new List<Item>();
    HoursList();
    super.initState();
  }

  BoxDecoration boderJustBottom() {
    return BoxDecoration(
      border: Border(
          bottom: BorderSide(
              color: widget.defaultColor
                  ? HexColor("#506690")
                  : HexColor('#B5B6B9'),
              width: 1)),
    );
  }

  BoxDecoration boderBottom() {
    return BoxDecoration(
      border: Border(
          top: BorderSide(
              color: widget.defaultColor
                  ? HexColor("#506690")
                  : HexColor('#e2e4e7'),
              width: 1),
          right: BorderSide(
              color: widget.defaultColor
                  ? HexColor("#506690")
                  : HexColor('#e2e4e7'),
              width: 1)),
    );
  }

//  widget.blackTheme
//               ? BorderSide(color: HexColor("#506690"), width: 1)
//               : BorderSide(color: Colors.grey[400], width: 1))

  @override
  Widget build(BuildContext context) {
    return Column(
      children: hours_.map((e) {
        return Container(
          //margin: EdgeInsets.only(left: 5),

          decoration: boderBottom(),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    //margin: EdgeInsets.only(right: 1),
                    color: widget.defaultColor
                        ? HexColor("#0e1726")
                        : Colors.white, //    (f6f6f6) Colors.red,
                    width: 22,
                    height: 70,
                    child: Text(
                      e.id.toString(),
                      style: TextStyle(
                          fontSize: 19,
                          color: widget.defaultColor
                              ? HexColor("#506690")
                              : HexColor("#656565")),
                    )),
                Container(
                  //     (f6f6f6) Colors.red,
                  // color: Color.fromRGBO(
                  //     246, 246, 246, 1), //    (f6f6f6) Colors.red,

                  color:
                      widget.defaultColor ? HexColor("#0e1726") : Colors.white,
                  width: 18,
                  height: 70,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 35,
                        decoration: boderJustBottom(),
                        child: Text(
                          e.text,
                          style: TextStyle(
                              fontSize: 9.2,
                              color: widget.defaultColor
                                  ? HexColor("#506690")
                                  : HexColor("#656565")),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        );
      }).toList(),
    );
  }
}
