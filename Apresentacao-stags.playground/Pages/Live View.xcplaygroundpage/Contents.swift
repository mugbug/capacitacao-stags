//: # Live View

//: [Previous](@previous)
import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {

    var counter = 0
    var label: UILabel!

    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        label = UILabel()
        label.textAlignment = .center
        label.text = "Olá amigos!"
        label.frame = CGRect(x: 75, y: 100,
                             width: 250, height: 50)
        view.addSubview(label)

        let button = UIButton()
        button.setTitle("Increment", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.frame = CGRect(x: 150, y: 150, width: 100, height: 50)

        button.addTarget(self,
                         action: #selector(incrementCounterAction), for: .touchUpInside)

        view.addSubview(button)


        self.view = view
    }

    @objc func incrementCounterAction(_ sender: Any) {
        label.text = "\(incrementCounter())"
    }

    func incrementCounter(by number: Int = 1) -> Int {
        counter += number
        return counter
    }
}


PlaygroundPage.current.liveView = MyViewController()
//: [Next](@next)
