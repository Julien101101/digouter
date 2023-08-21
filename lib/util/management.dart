// class KeyboardShortcutWrapper extends StatefulWidget {
//   @override
//   _KeyboardShortcutWrapperState createState() => _KeyboardShortcutWrapperState();
// }

// class _KeyboardShortcutWrapperState extends State<KeyboardShortcutWrapper> {
//   final _focusNode = FocusNode();
//   final _shortcutKey = LogicalKeySet(
//     LogicalKeyboardKey.keyS, // Change this to your desired shortcut key
//   );

//   @override
//   void initState() {
//     super.initState();
//     _focusNode.addListener(() {
//       if (_focusNode.hasFocus) {
//         _registerShortcuts();
//       } else {
//         _unregisterShortcuts();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _focusNode.dispose();
//     super.dispose();
//   }

//   void _registerShortcuts() {
//     RawKeyboard.instance.addListener(_handleRawKeyEvent);
//   }

//   void _unregisterShortcuts() {
//     RawKeyboard.instance.removeListener(_handleRawKeyEvent);
//   }

//   void _handleRawKeyEvent(RawKeyEvent event) {
//     if (event.isKeyPressed && event.logicalKey == _shortcutKey) {
//       // Perform navigation when the shortcut key is pressed
//       Navigator.pushNamed(context, '/wass_up'); // Adjust the route name as needed
//     }
//   }
