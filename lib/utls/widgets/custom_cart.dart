import 'package:flutter/material.dart';
import 'package:shop_bd/model/model.dart';
import 'package:shop_bd/utls/const.dart';
import 'package:shop_bd/utls/widgets.dart';

class CustomCart extends StatefulWidget {
  CustomCart({super.key, required this.quantity, required this.cartModel});
  int quantity;
  CartModel cartModel;

  @override
  State<CustomCart> createState() => _CustomCartState();
}

class _CustomCartState extends State<CustomCart> {
  var price = 0;
  double? subtotal;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 80, maxHeight: 200),
                  child: Image.network(
                    widget.cartModel.imgLink,
                    fit: BoxFit.cover,
                    // fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            )),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingText(widget.cartModel.title, clr: kBlack),
                SizedBox(height: 3),
                SubtitleText12(
                  widget.cartModel.formula,
                  clr: kBlack,
                  fs: 10,
                  fw: FontWeight.w400,
                ),
                SizedBox(height: 3),
                SubtitleText12(
                  widget.cartModel.genericName,
                  fw: FontWeight.w500,
                  ml: 1,
                  of: TextOverflow.ellipsis,
                ),
                SizedBox(height: 3),
                SubtitleText12(
                  widget.cartModel.companyName,
                  fw: FontWeight.w500,
                  ml: 1,
                  of: TextOverflow.ellipsis,
                ),
                SizedBox(height: 3),
                HeadingText(
                  '\$${widget.quantity == 0 ? widget.cartModel.total.toStringAsFixed(2) : subtotal!.toStringAsFixed(2)}',
                  clr: Colors.green.shade100,
                  fw: FontWeight.w500,
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: kMainColor),
                      // style: ButtonStyle(fixedSize: ),
                      child: Icon(Icons.add),
                      onPressed: () {
                        widget.quantity++;
                        subtotal =
                            widget.quantity * widget.cartModel.total.toDouble();
                        setState(() {});
                      }),
                  SubtitleText12(widget.quantity.toString()),
                  ElevatedButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (widget.quantity > 0) {
                          widget.quantity--;
                          subtotal = widget.quantity *
                              widget.cartModel.total.toDouble();
                          // subtotal = widget.quantity * subtotal;
                        }
                      });
                    },
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}
