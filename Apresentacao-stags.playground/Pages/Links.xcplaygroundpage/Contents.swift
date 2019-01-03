//: # Links
import PlaygroundSupport
import UIKit

class WebViewController: UIViewController {
    override func loadView() {
        let view = UIWebView()

        let url = URL(string: "https://swift.org/source-code/")
        let request = URLRequest(url: url!)

        view.loadRequest(request)

        self.view = view
    }
}

PlaygroundPage.current.liveView = WebViewController()

//: [Previous Topic](@previous)



















/*:
 Swift language [Swift.org](https://swift.org)
*/
/*:
 Tutorials [Ray Wenderlich](https://www.raywenderlich.com/category/ios)
*/
/*:
 Video [Swift 3 Tutorial](https://www.youtube.com/watch?v=dKaojOZ-az8&t=311s)
*/
