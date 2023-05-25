import 'package:get/get.dart';
import 'package:work/reservation/reservation_detail.dart';
import 'package:work/reservation/reservation_view.dart';
import 'package:work/utils/app_routes.dart';

routes() => [
      GetPage(name: AppRoutes.reservation, page: () => const ReservationView()),
      GetPage(
          name: AppRoutes.reservationDetail,
          page: () => const ReservationDetailView())
    ];
