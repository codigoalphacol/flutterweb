import 'package:appweb/routes/routes.dart';
import 'package:appweb/ui/clients/client_page.dart';
import 'package:appweb/ui/dashboard/dashboard_page.dart';
import 'package:appweb/ui/invoces/invoice_page.dart';
import 'package:appweb/ui/pays/pays_page.dart';
import 'package:appweb/ui/products/add_product.dart';
import 'package:appweb/ui/products/detail_page.dart';
import 'package:appweb/ui/products/product_page.dart';
import 'package:appweb/ui/reports/reports_page.dart';
import 'package:appweb/ui/task/task_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeDashboard:
        return MaterialPageRoute(builder: (_) => DashboardPage());
        break;
      case routeClient:
        return MaterialPageRoute(builder: (_) => ClientPage());
        break;
      case routeInvoice:
        return MaterialPageRoute(builder: (_) => InvoicePage());
        break;
      case routePays:
        return MaterialPageRoute(builder: (_) => PaysPage());
        break;
       case routeListProducts:
        return MaterialPageRoute(builder: (_) => ListProductPage());
        break;
      case routeReports:
        return MaterialPageRoute(builder: (_) => ReportsPage());
        break;
      case routeTask:
        return MaterialPageRoute(builder: (_) => TaskPage());
        break;
      case routeListProducts:
        return MaterialPageRoute(builder: (BuildContext context) => ListProductPage());
        break; 
      case routeAddProducts:
        return MaterialPageRoute(builder: (_) => AddProductsPage());
        break;  
      case routeDetailProduct:
        return MaterialPageRoute(builder: (BuildContext context) => DetailPage());
        break;
    }
  }
}
