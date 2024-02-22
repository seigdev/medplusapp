import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/repositories/book_appointment_repositories.dart';

bookAppointmentProvider(
  BuildContext context,
  String specialty,
  String user,
  String doctor,
  DateTime schedule_date,
  bool schedule_now,
  int consultation_fee,
  String note,
  String transaction,
) =>
    FutureProvider(
      (ref) => ref.read(bookAppointmentRepositoryProvider).bookAppointment(
            context,
            specialty,
            user,
            doctor,
            schedule_date,
            schedule_now,
            consultation_fee,
            note,
            transaction,
          ),
    );

final getSpecialtyListProvider = FutureProvider(
    (ref) => ref.read(bookAppointmentRepositoryProvider).getSpecialtyList());

final bookAppointmentRepositoryProvider =
    Provider<BookAppointmentRepository>((ref) => BookAppointmentRepository());
