// import 'package:flutter/material.dart';

// class ExpandingTextField extends StatefulWidget {
//   const ExpandingTextField({super.key});

//   @override
//   _ExpandingTextFieldState createState() => _ExpandingTextFieldState();
// }

// class _ExpandingTextFieldState extends State<ExpandingTextField> {
//   final TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Listener(
//       onPointerMove: (event) {
//         // Update the state when the text changes
//         setState(() {});
//       },
// child: TextField(
//   controller: _controller,
//   maxLines:
//       null, // Setting maxLines to null allows the TextField to expand
//   decoration: InputDecoration(
//       hintText: 'Type here...',
//       border:
//           OutlineInputBorder(borderRadius: BorderRadius.circular(14))),
// ),
//     );
//   }
// }import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AutoExpandableTextField extends StatefulWidget {
  final TextEditingController controller;
  final int? maxLines;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final TextStyle? style;
  final bool autocorrect;
  final TextAlign textAlign;
  final bool autofocus;
  final bool obscureText;
  final bool readOnly;
  final ToolbarOptions? toolbarOptions;
  final bool showCursor;
  final String obscuringCharacter;
  final bool autocapitalize;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final bool maxLengthEnforced;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final bool expands;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;
  final DragStartBehavior dragStartBehavior;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;

  const AutoExpandableTextField({
    Key? key,
    required this.controller,
    this.maxLines,
    this.decoration,
    this.keyboardType,
    this.style,
    this.autocorrect = true,
    this.textAlign = TextAlign.start,
    this.autofocus = false,
    this.obscureText = false,
    this.readOnly = false,
    this.toolbarOptions,
    this.showCursor = false,
    this.obscuringCharacter = '•',
    this.autocapitalize = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLengthEnforced = true,
    this.maxLengthEnforcement,
    this.onEditingComplete,
    this.onSubmitted,
    this.onChanged,
    this.inputFormatters,
    this.expands = false,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection = true,
    this.dragStartBehavior = DragStartBehavior.start,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints,
  }) : super(key: key);

  @override
  _AutoExpandableTextFieldState createState() =>
      _AutoExpandableTextFieldState();
}

class _AutoExpandableTextFieldState extends State<AutoExpandableTextField> {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerMove: (event) {
        // Update the state when the text changes
        setState(() {});
      },
      child: TextField(
        controller: widget.controller,
        maxLines: widget.maxLines,
        decoration: widget.decoration,
        keyboardType: widget.keyboardType,
        style: widget.style,
        autocorrect: widget.autocorrect,
        textAlign: widget.textAlign,
        autofocus: widget.autofocus,
        obscureText: widget.obscureText,
        readOnly: widget.readOnly,
        toolbarOptions: widget.toolbarOptions,
        showCursor: widget.showCursor,
        obscuringCharacter: widget.obscuringCharacter,
        smartDashesType: widget.smartDashesType,
        smartQuotesType: widget.smartQuotesType,
        enableSuggestions: widget.enableSuggestions,
        maxLengthEnforcement: widget.maxLengthEnforcement,
        onEditingComplete: widget.onEditingComplete,
        onSubmitted: widget.onSubmitted,
        onChanged: widget.onChanged,
        inputFormatters: widget.inputFormatters,
        expands: widget.expands,
        scrollPadding: widget.scrollPadding,
        enableInteractiveSelection: widget.enableInteractiveSelection,
        dragStartBehavior: widget.dragStartBehavior,
        scrollController: widget.scrollController,
        scrollPhysics: widget.scrollPhysics,
        autofillHints: widget.autofillHints,
      ),
    );
  }
}
