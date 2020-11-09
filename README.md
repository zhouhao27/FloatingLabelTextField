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
    FloatingLabelTextField(placeHolder: "Password", text: $password, isSecure: true)
  }
}
```

# TODO:

1. Since there is no event to tell when SecureTextField get focus or lost focus, so the Floating Lable will be always shown even when the field is empty and lost focust.





