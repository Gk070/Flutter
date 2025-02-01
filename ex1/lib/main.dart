import 'package:flutter/material.dart';

// 1.1 Main
/* Code
void main(){
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
                    "Hello World"
                ),
            ),
            backgroundColor: Colors.red[900],
          ),
          body: Center(
            child: Text(
              "My First App!!",
              textScaleFactor: 2,
            ),
          ),
          backgroundColor: Colors.cyanAccent,
        ),
      )
  );
}
*/

// 1.2 Make the text to centre without using centre widget
/* Code
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
                "Hello World"
            ),
          ),
          backgroundColor: Colors.red[900],
        ),
        body: Align(
          alignment: Alignment.center,
          child: Text(
            "My First App"
          ),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
    )
  );
}
*/

// 1.3 Change My First App to italics
/* Code
void main(){
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                  "Hello World"
              ),
            ),
            backgroundColor: Colors.red[900],
          ),
          body: Align(
            alignment: Alignment.center,
              child: Text(
                "My First App",
                style: TextStyle(
                  fontStyle: FontStyle.italic
                ),
              ),
          ),
          backgroundColor: Colors.cyanAccent,
        ),
      )
  );
}
*/

// 1.4 Align the My First App text to center left
/* Code
void main(){
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                  "Hello World"
              ),
            ),
            backgroundColor: Colors.red[900],
          ),
          body: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "My First App",
              style: TextStyle(
                  fontStyle: FontStyle.italic
              ),
            ),
          ),
          backgroundColor: Colors.cyanAccent,
        ),
      )
  );
}
*/

// 1.5 Align the My First App text to bottom right
/* Code
void main(){
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                  "Hello World"
              ),
            ),
            backgroundColor: Colors.red[900],
          ),
          body: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "My First App",
              style: TextStyle(
                  fontStyle: FontStyle.italic
              ),
            ),
          ),
          backgroundColor: Colors.cyanAccent,
        ),
      )
  );
}
*/

/*
 Shortcuts
 -------------------------------
 1.Enclosing a widget in a parent widget - Alt + Enter
 2.Toggling a keyboard on the simulator/ emulator to type a text - Ctrl + Shift + K (Windows/ Linux) (For mac Cmd insted of Ctrl)
 3.Analysing the widget tree using Flutter Outline - Alt + 7 (Windows/ Linux), Cmd + 7 (Mac)
 4.Removing the debug watermark from the running application in simulator/ emulator - debugShowCheckedModeBanner: false,
 5.Creating new shortcuts for various commands like creating a new project -
     Go to:
        Windows/Linux: File -> Settings -> map
        Mac: Android Studio -> references → Keymap
     Search for the Command You Want to Customize.
     Right-click on it and select Add Keyboard Shortcut.
     Press the desired shortcut key combination and click OK.
 6.Wrapping an existing widget with a new widget using flutter outline functionality -
     Open the Flutter Outline panel:
        Alt + 7 (Windows/Linux) / Cmd + 7 (Mac)
     Select the widget you want to wrap in the Outline panel.
     Right-click the widget -> Choose "Wrap with..."
     Available options include Container, Padding, Center, Column, Row, etc.
 */