import 'package:flutter/material.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/widgets/CustomFormField/CustomTextFormField.dart';

class PetsFilter extends StatelessWidget {
  const PetsFilter({
    Key? key,
    required this.titleController,
    required this.cubit,
  }) : super(key: key);

  final TextEditingController titleController;
  final AppCubit cubit;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: paddingLarge,
          childAspectRatio: 3,
          mainAxisSpacing: 1,
          crossAxisCount: 4),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(paddingLarge / 4),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: paddingLarge),
              child: Text(
                'breed',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                    color: black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: paddingLarge / 4,
            ),
            CustomFormField(
              title: '',
              readonly: true,
              titleController: titleController,
              type: TextInputType.text,
              borderRadius: 10,
              suffixIcon: DropdownButton<String>(
                items: cubit.sendFilterModel!.breed!
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    onTap: () {
                      titleController.text = value;
                    },
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 0,
                autofocus: false,
                underline: Container(),
                onChanged: (_) {},
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: paddingLarge),
              child: Text(
                'size',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                    color: black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: paddingLarge / 4,
            ),
            CustomFormField(
              title: '',
              readonly: true,
              titleController: titleController,
              type: TextInputType.text,
              borderRadius: 10,
              suffixIcon: DropdownButton<String>(
                items: cubit.sendFilterModel!.ages!
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    onTap: () {
                      titleController.text = value;
                    },
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 0,
                autofocus: false,
                underline: Container(),
                onChanged: (_) {},
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: paddingLarge),
              child: Text(
                'goodWith',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                    color: black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: paddingLarge / 4,
            ),
            CustomFormField(
              title: '',
              readonly: true,
              titleController: titleController,
              type: TextInputType.text,
              borderRadius: 10,
              suffixIcon: DropdownButton<String>(
                items: cubit.sendFilterModel!.size!
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    onTap: () {
                      titleController.text = value;
                    },
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 0,
                autofocus: false,
                underline: Container(),
                onChanged: (_) {},
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: paddingLarge),
              child: Text(
                'title',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                    color: black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: paddingLarge / 4,
            ),
            CustomFormField(
              title: '',
              readonly: true,
              titleController: titleController,
              type: TextInputType.text,
              borderRadius: 10,
              suffixIcon: DropdownButton<String>(
                items: cubit.sendFilterModel!.goodWith!
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    onTap: () {
                      titleController.text = value;
                    },
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 0,
                autofocus: false,
                underline: Container(),
                onChanged: (_) {},
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: paddingLarge),
              child: Text(
                'Gender',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                    color: black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: paddingLarge / 4,
            ),
            CustomFormField(
              title: '',
              readonly: true,
              titleController: titleController,
              type: TextInputType.text,
              borderRadius: 10,
              suffixIcon: DropdownButton<String>(
                items: cubit.sendFilterModel!.ages!
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    onTap: () {
                      titleController.text = value;
                    },
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 0,
                autofocus: false,
                underline: Container(),
                onChanged: (_) {},
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: paddingLarge),
              child: Text(
                'colors',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                    color: black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: paddingLarge / 4,
            ),
            CustomFormField(
              title: '',
              readonly: true,
              titleController: titleController,
              type: TextInputType.text,
              borderRadius: 10,
              suffixIcon: DropdownButton<String>(
                items: cubit.sendFilterModel!.colors!
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    onTap: () {
                      titleController.text = value;
                    },
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 0,
                autofocus: false,
                underline: Container(),
                onChanged: (_) {},
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: paddingLarge),
              child: Text(
                'hairLength',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                    color: black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: paddingLarge / 4,
            ),
            CustomFormField(
              title: '',
              readonly: true,
              titleController: titleController,
              type: TextInputType.text,
              borderRadius: 10,
              suffixIcon: DropdownButton<String>(
                items: cubit.sendFilterModel!.hairLength!
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    onTap: () {
                      titleController.text = value;
                    },
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 0,
                autofocus: false,
                underline: Container(),
                onChanged: (_) {},
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: paddingLarge),
              child: Text(
                'behaviour',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                    color: black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: paddingLarge / 4,
            ),
            CustomFormField(
              title: '',
              readonly: true,
              titleController: titleController,
              type: TextInputType.text,
              borderRadius: 10,
              suffixIcon: DropdownButton<String>(
                items: cubit.sendFilterModel!.behaviour!
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    onTap: () {
                      titleController.text = value;
                    },
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 0,
                autofocus: false,
                underline: Container(),
                onChanged: (_) {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
