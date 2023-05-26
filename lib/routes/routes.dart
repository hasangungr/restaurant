import 'package:get/get.dart';
import 'package:work/home.dart';
import 'package:work/reservation/reservation_detail.dart';
import 'package:work/reservation/reservation_view.dart';
import 'package:work/utils/app_routes.dart';

import '../mobile_scanner/mobile_scanner_view.dart';

routes() => [
      GetPage(name: AppRoutes.home, page: () => const HomeView()),
      GetPage(name: AppRoutes.reservation, page: () => const ReservationView()),
      GetPage(
          name: AppRoutes.reservationDetail,
          page: () => const ReservationDetailView()),
      GetPage(
          name: AppRoutes.mobileScanner, page: () => const MobileScannerView())
    ];
