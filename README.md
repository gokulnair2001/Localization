# 🔠 Localization 
Ever wondered how app localize with native languages, lets understand how Localization works in iOS.

Lets understand how Localizations works in iOS, Now in order to localize with languages apps just replaces the existing english word with value it 
is provided in the required language.

There are three main steps for localization:

1. Add Localizations in the project section
2. Add the extension given below to all the string
3. Add the Key:Value for languages in the Localizable file

***For eg:For Hello in english -> नमस्ते in hindi***  just provide the value of Hello in the Localizable string folder.

# 📌 Localization Extension
```swift
//MARK: - Extension for Localization
extension String {
    func localized() -> String {
        return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
    }
}
```
# ❓How to use extension 

```swift
 // Outlets
 @IBOutlet weak var greetingsLabel: UILabel!
 
 // Assiging text
 greetingsLabel.text = "Hello".localized()
```
***Make sure the Key:Value file folder is named the same as given in tableName above***

# 📱 Snapshots
| English | Hindi |
| -- | -- |
| ![SS1](https://user-images.githubusercontent.com/56252259/175936873-24dc9576-487b-4fa1-8b48-ad77ffe59af6.png) | ![SS2](https://user-images.githubusercontent.com/56252259/175937604-a31ae6c7-2279-41de-85d0-031ce0873f49.png) |

# 📁 Localizable File 
* To best way to make localization easy is by converting the native language text as key and its value as the required language translation.
```swift
"Hello" = "नमस्ते";
```
Similarly add values for every text for localization in the **Localizable File**.

