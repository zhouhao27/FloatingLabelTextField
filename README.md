# FloatingLabelTextField

A simple SwiftUI FloatingLabelTextField component which shows floating lable for TextField.

![Screenshot](./images/screen.png)

# Installation

Install through Swift Package Manager.

# Example

```
@State var name = ""
@State var age = ""

var body: some View {
  VStack {
    FloatingLabelTextField(placeHolder: "Input your name", text: $name)
    FloatingLabelTextField(placeHolder: "Input your age", text: $age)
  }
}
```

# TODO:

1. For SecureField





