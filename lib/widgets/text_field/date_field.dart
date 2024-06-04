import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wahid_chat_n_todolist/style/box.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';
import 'package:wahid_chat_n_todolist/style/text_box.dart';

Widget datePicker({
  required String hint,
  required IconData icon,
  required Function(DateTime?)? onChange,
  DateTime? initData,
  bool dateOnly = true,
  bool timeOnly = false,
}) =>
    Container(
      decoration: customRoundedStyle(color: gray_3, size: 15),
      child: DateTimeField(
        initialValue: initData,
        format: DateFormat(timeOnly
            ? 'HH:mm'
            : dateOnly
                ? 'dd MMMM yyyy'
                : 'dd/MM/yyyy HH:mm'),
        decoration: textFieldStyle(hint, icon),
        onChanged: onChange,
        onShowPicker: (context, currentValue) async {
          DateTime? time;

          if (timeOnly) {
            final data = await showTimePicker(
              context: context,
              initialTime:
                  TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
            );

            time = DateTimeField.convert(data);
          } else {
            time = await showDatePicker(
              context: context,
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
              initialDate: DateTime.now(),
            ).then((DateTime? date) async {
              if (dateOnly) {
                return date;
              } else {
                if (date != null) {
                  final time = await showTimePicker(
                    context: context,
                    initialTime:
                        TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                  );
                  return DateTimeField.combine(date, time);
                } else {
                  return currentValue;
                }
              }
            });
          }

          return time;
        },
      ),
    );

Widget dateTitlePicker({
  required String hint,
  required IconData icon,
  required Function(DateTime?)? onChange,
  DateTime? initData,
  bool dateOnly = true,
  bool timeOnly = false,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hint,
          style: bold_12_1,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: customRoundedStyle(color: gray_3, size: 15),
          child: DateTimeField(
            initialValue: initData,
            format: DateFormat(timeOnly
                ? 'HH:mm'
                : dateOnly
                    ? 'dd MMMM yyyy'
                    : 'dd/MM/yyyy HH:mm'),
            decoration: textFieldStyle(hint, icon),
            onChanged: onChange,
            onShowPicker: (context, currentValue) async {
              DateTime? time;

              if (timeOnly) {
                final data = await showTimePicker(
                  context: context,
                  initialTime:
                      TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                );

                time = DateTimeField.convert(data);
              } else {
                time = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  initialDate: DateTime.now(),
                ).then((DateTime? date) async {
                  if (dateOnly) {
                    return date;
                  } else {
                    if (date != null) {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(
                            currentValue ?? DateTime.now()),
                      );
                      return DateTimeField.combine(date, time);
                    } else {
                      return currentValue;
                    }
                  }
                });
              }

              return time;
            },
          ),
        ),
      ],
    );
