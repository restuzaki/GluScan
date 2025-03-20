import 'package:project_sehat/app/common/model/on_boarding_model.dart';
import 'package:lottie/lottie.dart';

List<OnBoardingModel> onboarding = [
  OnBoardingModel(
    image: Lottie.asset('assets/animation/onboard1.json'),
    subTitle:
        "Jangan biarkan gula tersembunyi mengganggu kesehatanmu! Dengan aplikasi ini, kamu bisa dengan mudah memindai makanan dan mengetahui kadar gula di dalamnya sebelum dikonsumsi.",
    title: "Cek Gula Makanan 🍬",
  ),
  OnBoardingModel(
    image: Lottie.asset('assets/animation/onboard2.json'),
    subTitle:
        "Menjaga pola makan sehat sangat penting bagi penderita diabetes. Pantau asupan gula harianmu dan buat keputusan yang lebih baik untuk kesehatan yang lebih baik.",
    title: " Ayo Hidup Sehat❗",
  ),
  OnBoardingModel(
    image: Lottie.asset('assets/animation/onboard3.json'),
    subTitle:
        "Kesehatan adalah investasi terbaik untuk keluarga! Bantu orang tersayang mengontrol konsumsi gula mereka dan ciptakan kebiasaan makan sehat bersama.",
    title: "Peduli Keluarga, Peduli Gula ❤️",
  ),
];
