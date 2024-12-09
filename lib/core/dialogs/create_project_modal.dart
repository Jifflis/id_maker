import 'package:flutter/material.dart';
import 'package:id_maker_flutter/core/widgets/input_text.dart';
import 'package:id_maker_flutter/features/projects/domain/entities/entity_project.dart';

import '../constant/style.dart';
import 'modal.dart';

Future<void> createProjectModal(
  BuildContext context, {
  Function(EntityProject)? onSaved,
}) {
  return modal(context, child: CreateProjectWidget(onSaved: onSaved ,));
}

class CreateProjectWidget extends StatefulWidget {
  const CreateProjectWidget({this.onSaved, super.key});

  final Function(EntityProject)? onSaved;

  @override
  State<CreateProjectWidget> createState() => _CreateProjectWidgetState();
}

class _CreateProjectWidgetState extends State<CreateProjectWidget> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _widthController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Text(
            'Create New Project',
            style: Style.header3Bold,
          ),
          const SizedBox(height: 24),
          InputText(
            textController: _titleController,
            labelText: 'Project Name',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: InputText(
                  textController: _widthController,
                  labelText: 'Width',
                ),
              ),
              const SizedBox(width: 48),
              Expanded(
                  child: InputText(
                textController: _heightController,
                labelText: 'Height',
              ))
            ],
          ),
          const SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  if (_titleController.text.isEmpty ||
                      _widthController.text.isEmpty ||
                      _heightController.text.isEmpty) {
                    return;
                  }

                  widget.onSaved?.call(
                    EntityProject(
                      title: _titleController.text,
                      width: double.parse(_widthController.text),
                      height: double.parse(_heightController.text),
                    ),
                  );

                  Navigator.pop(context);
                },
                child: Text(
                  'Save',
                  style: Style.header4.copyWith(color: Colors.blueAccent),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
