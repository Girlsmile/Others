# Others
一些日常demo学习

# SwiftUI https://developer.apple.com/tutorials/swiftui

## @State

 @State属性允许你修改Struct的属性，这些属性在普通的Struct里面是不允许修改的。通过使用@State修饰器我们可以关联出 View 的状态. SwiftUI 将会把使用过 @State 修饰器的属性存储到一个特殊的内存区域，并且这个区域和 View struct 是隔离的. 当 @State 装饰过的属性发生了变化，SwiftUI 会根据新的属性值重新创建视图。


## @Binding

类似@State，通过 @Binding 修饰器修饰后，属性变成了一个引用类型，传递变成了引用传递，这样父子视图的状态就能关联起来


## @Environment & @ObservedObject

类通过继承  ObservedObject， 然后@ Environment 声明改类具有和 @State类似的能力


## @Published

ObservedObject里面可以被观察的属性

## @Environment

系统 ObservedObject，可以观察某些属性


 ## ``` UIViewControllerRepresentable ``` :

假设要在SwiftUI 里面使用 UIPhotoPicker
 ```swift
struct ImagePicker: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        // Return an instance of UIImagePickerController
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {

    }
}
```
這個協定有兩個需要遵從的方法。當初始化 ImagePicker 時，就會調用 makeUIViewController 方法。在該方法中，你需要實例化 (instantiate) UIImagePickerController，並配置其初始狀態。另外，在 App 狀態有所更改而影響 ImagePicker 時，就會調用 updateUIViewController 方法。你可以實作這個方法，來更新 UIImagePickerController 的配置。如果沒有要更新的內容，你也可以將該方法留空。

https://www.appcoda.com.tw/swiftui-camera-photo-library/
