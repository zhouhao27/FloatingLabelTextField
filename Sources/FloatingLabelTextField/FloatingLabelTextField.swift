import SwiftUI

@available(iOS 13, *)
public struct FloatingLabelTextField: View {
  
  @State private var placeHolder: String = ""
  @State private var placeHolderLabel: String = ""
  private var placeHolderValue: String = ""
  @Binding var text: String
  @State private var isActive: Bool = false
  
  public init(placeHolder: String = "Please Input",
              text: Binding<String> = .constant("")) {
    self._text = text
    self.placeHolderValue = placeHolder
  }
  
  private func updateEditMode(edit: Bool) {
    if edit {
      self.placeHolderLabel = self.placeHolderValue
      self.placeHolder = ""
      self.isActive = true
    } else {
      if self.text.count == 0 {
        self.placeHolder = self.placeHolderValue
        self.placeHolderLabel = ""
      }
      self.isActive = false
    }
  }
  
  public var body: some View {
    
    return VStack(alignment: .leading) {
      Text(placeHolderLabel).font(.footnote).foregroundColor(.gray)
      TextField(placeHolder, text: $text, onEditingChanged: { (edit) in
        self.updateEditMode(edit: edit)
      }).onAppear {
        self.placeHolder = self.placeHolderValue
      }

      Divider().background(self.isActive ? Color.blue : Color.gray)
    }
    .padding(.horizontal,20)
    .padding(.vertical, 20)
  }
  
}

@available(iOS 13, *)
struct FloatingLabelTextField_Previews: PreviewProvider {
  @State var value: String = ""
  
  static var previews: some View {
    FloatingLabelTextField()
  }
}
