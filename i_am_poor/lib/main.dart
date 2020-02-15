import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text('I am poor'),
            backgroundColor: Colors.orange[700],
          ),
          body: Center(
            child: Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1536096347608-f2d054f64a17?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
            ),
          ),
        ),
      ),
    );
