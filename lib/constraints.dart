import 'package:flutter/material.dart';

const kTextFieldInputDecoration=InputDecoration(
          hintText: '',
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(
            vertical: 10,horizontal: 20
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:BorderSide(color: Colors.blueAccent,width: 1),
            borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:BorderSide(color: Colors.blueAccent,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(30))
            )
        );