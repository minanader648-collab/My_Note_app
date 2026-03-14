import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_note/models/note_model.dart';
import 'package:my_note/views/widgets/CustomBottom_Add.dart';
import 'package:my_note/views/widgets/colors_list_view.dart';
import 'package:my_note/views/widgets/custom_text_field.dart';
import 'package:my_note/cubits/add_note_cubit/add_note_cubit.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 40.0),
          CustomTextField(
            hint: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 20.0),
          CustomTextField(
            hint: "Content",
            maxLine: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 25.0),
          const ColorListView(),
          const SizedBox(height: 25.0),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomBottom(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurrentDate = DateFormat(
                      'yyyy-MM-dd',
                    ).format(currentDate);
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      color: Colors.blueAccent.value,
                      date: formattedCurrentDate,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
