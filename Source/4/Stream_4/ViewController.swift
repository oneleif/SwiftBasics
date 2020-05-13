import UIKit

class ViewController: UIViewController {
    var isF = true {
        didSet {
            if isF {
                someTemp = someTemp * 1.8 + 32.0
            } else {
                someTemp = (someTemp - 32.0) / 1.8
            }
        }
    }
    var someTemp = 72.0 {
        didSet {
            label.text = temp
        }
    }
    
    var temp: String {
        "\(someTemp) \(isF ? "F" : "C")"
    }
    
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let someView = UIView()
        
        someView.translatesAutoresizingMaskIntoConstraints = false
        someView.backgroundColor = .white
        
        someView.layer.borderWidth = 3
        someView.layer.borderColor = UIColor.darkGray.cgColor
        
        someView.layer.cornerRadius = 8
        
        label.text = temp
        
        let button = UIButton()
        
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Convert", for: .normal)
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        
        let stackView = UIStackView(arrangedSubviews: [label, button])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        
        someView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: someView.leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: someView.trailingAnchor, constant: 0),
            stackView.topAnchor.constraint(equalTo: someView.topAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: someView.bottomAnchor, constant: 0)
        ])
        
        view.addSubview(someView)
        
        NSLayoutConstraint.activate([
            someView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            someView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
            someView.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            someView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -64)
        ])
        
    }
    
    @objc
    func buttonTapped() {
        isF.toggle()
    }
}
