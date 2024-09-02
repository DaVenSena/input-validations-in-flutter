# ejemplo_contruccion_soft

A new Flutter 3.22.3 project.

## Getting Started

In the proccess to run this project, first you need to execute the next command in the terminal:

```bash
flutter pub get
```

Then, you can run the project with the next command:

```bash
flutter run
```

You can also run the project with the next command:

```bash
flutter run -d chrome
```

Or directly if your using VSCode install the Flutter extension and run the project, down left corner select a desired device and click F5.

and for the work, you in

```flutter
TextField(
  controller: controller,
  decoration: const InputDecoration(
    hintText: "Ingrese su cédula",
    border: UnderlineInputBorder(),
  ),
),
```

you can use the next keyboard types:

- TextInputType.text
- TextInputType.number
- TextInputType.phone
- TextInputType.emailAddress
- TextInputType.url
- TextInputType.visiblePassword
- TextInputType.name
- TextInputType.multiline

for controlling the keyboard type and what you can type natively.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
