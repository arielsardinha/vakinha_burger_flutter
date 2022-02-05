import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/modules/order/finished/finished_page.dart';
import 'package:vakinha_burger_mobile/app/modules/order/pix/pix_paged.dart';

class OrdersRouters {
  OrdersRouters._();
  static final routers = <GetPage>[
    GetPage(
      name: '/orders/finished',
      page: () => FinishedPage(),
    ),
    GetPage(
      name: '/orders/pix',
      page: () => PixPage(),
    ),
  ];
}
