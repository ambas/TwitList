//
//  ViewController.swift
//  TwitList
//
//  Created by Ambas Chobsanti on 23/6/19.
//  Copyright © 2019 Ambas Chobsanti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureView()
    }
    
    private func configureView() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = UIStackView.spacingUseSystem
        let firstTweetView = TweetView(frame: .zero)
        let secoundTweeView = TweetView(frame: .zero)

        stackView.addArrangedSubview(firstTweetView)
        stackView.addArrangedSubview(secoundTweeView)
        
        view.addSubview(stackView)
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            ])

    }


}

