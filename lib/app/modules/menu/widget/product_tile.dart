import 'package:flutter/material.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_helper.dart';
import 'package:vakinha_burger_mobile/app/models/product_model.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;

  const ProductTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        elevation: 2,
        child: ListTile(
          onTap: () {},
          leading: Container(
            width: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(
                    'http://dartweek.academiadoflutter.com.br/images${product.image}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(product.name),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(FormatterHelper.formatCurrency(product.price)),
              Text(product.description)
            ],
          ),
        ),
      ),
    );
  }
}
