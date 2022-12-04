import 'package:example/core.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';

class TrExampleController extends State<TrExampleView>
    implements MvcController {
  static late TrExampleController instance;
  late TrExampleView view;
  Faker faker = Faker.instance;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  // ValueNotifier<int> counter = ValueNotifier(0);
  var counter = 0.obs;
}

Widget Obx(ValueNotifier val, Widget Function(ValueNotifier vn) func) {
  return ValueListenableBuilder(
    valueListenable: val,
    builder: (
      _,
      __,
      ___,
    ) {
      return func(val);
    },
  );
}

extension ValueNonitifierExtension on num {
  ValueNotifier get obs {
    var value = this;
    ValueNotifier _ = ValueNotifier(this);
    return _;
  }
}
