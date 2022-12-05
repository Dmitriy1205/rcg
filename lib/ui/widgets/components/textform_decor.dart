import 'package:flutter/material.dart';

InputDecoration authEmailFieldDecor(String hintText) {
  return InputDecoration(
    prefix: SizedBox(width: 20,),
    errorStyle: TextStyle(fontSize: 10),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
    hintText: hintText,
    contentPadding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: const BorderSide(
        color: Colors.black,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: BorderSide(
        color: Colors.grey.shade300,
        width: 0.7,
      ),
    ),
  );
}

InputDecoration authPassFieldDecor(String hintText, bool isObscurePas,
    {void Function()? onPressed}) {
  return InputDecoration(
    prefix: SizedBox(width: 20,),
    errorStyle: TextStyle(fontSize: 10),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
    hintText: hintText,
    contentPadding: const EdgeInsets.symmetric( vertical: 10),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: const BorderSide(
        color: Colors.black,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: BorderSide(
        color: Colors.grey.shade300,
        width: 0.7,
      ),
    ),
    suffixIcon: IconButton(
      splashRadius: 1,
      onPressed: onPressed,
      icon: Icon(
        isObscurePas ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
        color: Colors.grey,
        size: 20,
      ),
    ),
  );
}
