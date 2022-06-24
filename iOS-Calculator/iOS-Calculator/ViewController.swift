//
//  ViewController.swift
//  iOS-Calculator
//
//  Created by 김민재 on 2022/06/23.
//

import UIKit

class ViewController: UIViewController {
    // MARK: UI Components
    
    private var numberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        label.textColor = .white
        label.font = .systemFont(ofSize: 80, weight: .light)
        label.numberOfLines = 1
        label.textAlignment = .right
        return label
    }()
    
    // 숫자 키패드
    private lazy var button0: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("0", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .darkGray
        configuration.cornerStyle = .capsule
        
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 0)
        
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        button.contentHorizontalAlignment = .leading
        
        return button
    }()
    
    private lazy var button1: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("1", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .darkGray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var button2: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("2", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .darkGray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var button3: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("3", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .darkGray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var button4: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("4", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .darkGray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var button5: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("5", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .darkGray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var button6: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("6", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .darkGray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var button7: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("7", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .darkGray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var button8: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("8", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .darkGray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var button9: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("9", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .darkGray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var buttonDot: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString(".", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .darkGray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    // 연산자 키패드
    private lazy var buttonDiv: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("÷", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .orange
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var buttonMultiply: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("x", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .orange
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var buttonMinus: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("-", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .orange
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var buttonPlus: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("+", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .orange
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var buttonEqual: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("=", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .orange
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var buttonAC: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("AC", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .gray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var buttonMod: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("%", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .gray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    private lazy var buttonSignConversion: UIButton = {
        var configuration = UIButton.Configuration.plain()
        
        var container = AttributeContainer()
        container.font = .systemFont(ofSize: 40, weight: .medium)
        
        configuration.attributedTitle = AttributedString("+/-", attributes: container)
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = .gray
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        
        return button
    }()
    
    // 버튼 모음
    private lazy var digitButtons: [UIButton] = [button0, button1, button2, button3, button4, button5, button6, button7, button8, button9, buttonDot]
    
    private lazy var operatorButtons: [UIButton] = [buttonDiv, buttonMultiply, buttonMinus, buttonPlus, buttonEqual, buttonMod, buttonSignConversion, buttonAC]
    
    private lazy var allButtons: [UIButton] = (digitButtons + operatorButtons)
    
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        render()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        makeButtonsCircle()
    }
    
    
    // MARK: Functions
    private func configUI() {
        self.view.backgroundColor = .black
    }
    
    private func render() {

        let stackView1: UIStackView = {
            let stackV = UIStackView(arrangedSubviews: [buttonAC, buttonSignConversion, buttonMod, buttonDiv])
            stackV.axis = .horizontal
            stackV.spacing = 10
            stackV.distribution = .fillEqually
            return stackV
        }()
        
        let stackView2: UIStackView = {
            let stackV = UIStackView(arrangedSubviews: [button7, button8, button9, buttonMultiply])
            stackV.axis = .horizontal
            stackV.spacing = 10
            stackV.distribution = .fillEqually
            return stackV
        }()
        
        let stackView3: UIStackView = {
            let stackV = UIStackView(arrangedSubviews: [button4, button5, button6, buttonMinus])
            stackV.axis = .horizontal
            stackV.spacing = 10
            stackV.distribution = .fillEqually
            return stackV
        }()
        
        let stackView4: UIStackView = {
            let stackV = UIStackView(arrangedSubviews: [button1, button2, button3, buttonPlus])
            stackV.axis = .horizontal
            stackV.spacing = 10
            stackV.distribution = .fillEqually
            return stackV
        }()
        
        let stackView5: UIStackView = {
            let stackV = UIStackView(arrangedSubviews: [button0, buttonDot, buttonEqual])
            stackV.axis = .horizontal
            stackV.spacing = 10
            return stackV
        }()
        
        let totalStackView: UIStackView = {
            let stackV = UIStackView(arrangedSubviews: [stackView1,stackView2,stackView3,stackView4, stackView5])
            stackV.translatesAutoresizingMaskIntoConstraints = false
            stackV.axis = .vertical
            stackV.spacing = 10
            stackV.distribution = .fillEqually
            return stackV
        }()
        
        self.view.addSubview(totalStackView)
        
        totalStackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        totalStackView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 0).isActive = true
        totalStackView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: 0).isActive = true
        
        buttonEqual.widthAnchor.constraint(equalTo: buttonPlus.widthAnchor).isActive = true
        buttonDot.widthAnchor.constraint(equalTo: button3.widthAnchor).isActive = true
        
        self.view.addSubview(numberLabel)
        
        numberLabel.bottomAnchor.constraint(equalTo: totalStackView.topAnchor, constant: -10).isActive = true
        numberLabel.centerXAnchor.constraint(equalTo: buttonDiv.centerXAnchor).isActive = true
    }
    
    private func makeButtonsCircle() {
        let StackSpacingLeadingTrailingConstraint = CGFloat(50)
        for button in allButtons {
            button.heightAnchor.constraint(equalToConstant: ((view.frame.width - StackSpacingLeadingTrailingConstraint) / 4)).isActive = true
            if button == button0 {
                continue
            } else {
                let handler: UIButton.ConfigurationUpdateHandler = { button in
                    button.configuration?.background.cornerRadius = button.bounds.size.width / 2
                }
                button.configurationUpdateHandler = handler
            }
        }
    }
    
    
    
}


#if DEBUG
import SwiftUI
struct ViewControllerRepresentable: UIViewControllerRepresentable {
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    @available(iOS 13.0, *)
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
}

struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
    }
}

#endif
