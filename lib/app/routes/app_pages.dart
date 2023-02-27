import 'package:get/get.dart';

import '../modules/authentification/bindings/authentification_binding.dart';
import '../modules/authentification/views/authentification_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

import '../modules/mon_espace/collecte_pv/bindings/collecte_pv_binding.dart';
import '../modules/mon_espace/collecte_pv/views/collecte_pv_view.dart';
import '../modules/mon_espace/incident/bindings/incident_binding.dart';
import '../modules/mon_espace/incident/views/incident_view.dart';
import '../modules/mon_espace/interview/bindings/interview_binding.dart';
import '../modules/mon_espace/interview/views/interview_view.dart';
import '../modules/mon_espace/nouvelle/bindings/nouvelle_binding.dart';
import '../modules/mon_espace/nouvelle/views/nouvelle_view.dart';
import '../modules/mon_espace/personnes_influentes/bindings/personnes_influentes_binding.dart';
import '../modules/mon_espace/personnes_influentes/views/personnes_influentes_view.dart';
import '../modules/mon_espace/sondage/bindings/sondage_binding.dart';
import '../modules/mon_espace/sondage/views/sondage_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';

import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTIFICATION,
      page: () => const AuthentificationView(),
      binding: AuthentificationBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SONDAGE,
      page: () => const SondageView(),
      binding: SondageBinding(),
    ),
    GetPage(
      name: _Paths.INTERVIEW,
      page: () => const InterviewView(),
      binding: InterviewBinding(),
    ),
    GetPage(
      name: _Paths.INCIDENT,
      page: () => const IncidentView(),
      binding: IncidentBinding(),
    ),
    GetPage(
      name: _Paths.NOUVELLE,
      page: () => const NouvelleView(),
      binding: NouvelleBinding(),
    ),
    GetPage(
      name: _Paths.PERSONNES_INFLUENTES,
      page: () => const PersonnesInfluentesView(),
      binding: PersonnesInfluentesBinding(),
    ),
    GetPage(
      name: _Paths.COLLECTE_PV,
      page: () => const CollectePvView(),
      binding: CollectePvBinding(),
    ),
  ];
}
