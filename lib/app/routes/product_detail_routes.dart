import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/modules/product_detail/product_detail_bindings.dart';
import 'package:vakinha_burger_mobile/app/modules/product_detail/product_detail_page.dart';

class ProductDetailRoutes {
  ProductDetailRoutes._();

  static final routes = <GetPage>[
    GetPage(
      name: '/product_detail',
      binding: ProductDetailBings(),
      page: () => const ProductDetailPage(),
    )
  ];
}
