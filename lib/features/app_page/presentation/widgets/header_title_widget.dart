import 'package:flutter/material.dart';
import 'package:ok_app/config/color_theme.dart';
import 'package:ok_app/features/app_page/domain/entities/header_title_entity.dart';

class HeaderTitleWidget extends StatelessWidget {
  static const double _titleHeight = 40;
  static const double _subTitleHeight = 25;
  static const double _bottomMargin = 20;
  final HeaderTitleEntity _headerTitle;

  const HeaderTitleWidget({super.key, required HeaderTitleEntity headerTitle})
      : _headerTitle = headerTitle;

  double get height {
    return (_headerTitle.title != null ? _titleHeight : 0) +
        (_headerTitle.subTitle != null ? _subTitleHeight : 0) +
        _bottomMargin;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_headerTitle.title != null)
          Row(
            children: [
              const SizedBox(
                width: _titleHeight,
                height: _titleHeight,
                child: Icon(Icons.arrow_back),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    _headerTitle.title!,
                    style: TextStyle(fontSize: 20, color: ColorTheme.mainText),
                  ),
                ),
              ),
              const SizedBox(
                width: _titleHeight,
                height: _titleHeight,
              ),
            ],
          ),
        if (_headerTitle.subTitle != null)
          SizedBox(
            height: _subTitleHeight,
            child: Text(_headerTitle.subTitle!),
          ),
        const SizedBox(height: _bottomMargin),
      ],
    );
  }
}
