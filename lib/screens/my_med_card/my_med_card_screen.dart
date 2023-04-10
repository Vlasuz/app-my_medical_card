import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/med_card_button_widget.dart';
import 'components/med_card_info_widget.dart';
import 'components/med_card_top.dart';

class MyMedCardScreen extends StatelessWidget {
  const MyMedCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60.0,
        ),
        const MedCardTop(),
        const _MedCardAllInfoWidget(),
        const _MedCardButtonsWidget(),
        const _MedCardExportButton(),
      ],
    );
  }
}

class _MedCardExportButton extends StatefulWidget {
  const _MedCardExportButton({
    super.key,
  });

  @override
  State<_MedCardExportButton> createState() => _MedCardExportButtonState();
}

class _MedCardExportButtonState extends State<_MedCardExportButton> {
  bool _isTap = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: GestureDetector(
        onTapDown: (value) => setState(() => _isTap = true),
        onTapCancel: () => setState(() => _isTap = false),
        onTapUp: (value) => {setState(() => _isTap = false)},
        child: AnimatedContainer(
          height: 49.0,
          duration: const Duration(milliseconds: 50),
          transform: Matrix4.translationValues(0, _isTap ? 3.0 : 0, 0),
          decoration: BoxDecoration(
              color: const Color(0xFFCD81FF),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xFF8A4CB2),
                    offset: Offset(0, _isTap ? 0 : 3.0)),
              ],
              borderRadius: BorderRadius.circular(8.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/med_card-export.svg'),
              const SizedBox(width: 8.0),
              Text(
                'Експорт'.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: 'Rubik_one',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MedCardButtonsWidget extends StatelessWidget {
  const _MedCardButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: Wrap(
        runSpacing: 20.0,
        spacing: 14.0,
        children: [
          MedCardButtonWidget(
            icon: SvgPicture.asset('assets/icons/med_card-clock.svg'),
            title: 'Хроническое',
            color: const Color(0xFF43C2FE),
            colorShadow: const Color(0xFF199CE9),
          ),
          MedCardButtonWidget(
            icon: SvgPicture.asset('assets/icons/med_card-girl.svg'),
            title: 'Аллергия',
            color: const Color(0xFF77C900),
            colorShadow: const Color(0xFF69B701),
          ),
          MedCardButtonWidget(
            icon: SvgPicture.asset('assets/icons/med_card-microscope.svg'),
            title: 'Мои анализы',
            color: const Color(0xFFDA3767),
            colorShadow: const Color(0xFFC72D5D),
          ),
          MedCardButtonWidget(
            icon: SvgPicture.asset('assets/icons/med_card-hospital.svg'),
            title: 'Посещения \nврача',
            color: const Color(0xFFCD81FF),
            colorShadow: const Color(0xFF9268CD),
          ),
          MedCardButtonWidget(
            icon: SvgPicture.asset('assets/icons/med_card-microscope.svg'),
            title: 'Необходимые \лекарства',
            color: const Color(0xFF3A4D5C),
            colorShadow: const Color(0xFF143441),
          ),
          MedCardButtonWidget(
            icon: SvgPicture.asset('assets/icons/med_card-girl.svg'),
            title: 'Ваши врачи',
            color: const Color(0xFFFFB103),
            colorShadow: const Color(0xFFBB7019),
          ),
        ],
      ),
    );
  }
}

class _MedCardAllInfoWidget extends StatelessWidget {
  const _MedCardAllInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 16.0, right: 16.0, top: 14.0, bottom: 24.0),
      child: Row(
        children: [
          MedCardInfoWidget(
            value: '180',
            type: 'Возраст (cм)',
            icon: SvgPicture.asset(
              'assets/icons/measurement.svg',
              height: 40.0,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          MedCardInfoWidget(
            value: '80',
            type: 'Вес (кг)',
            icon: SvgPicture.asset(
              'assets/icons/weight-scales.svg',
              height: 40.0,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          MedCardInfoWidget(
            value: 'А+',
            type: 'Группа крови',
            icon: SvgPicture.asset(
              'assets/icons/medical-potion.svg',
              height: 40.0,
            ),
          ),
        ],
      ),
    );
  }
}
