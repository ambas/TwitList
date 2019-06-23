//
//  TweetView.swift
//  TwitList
//
//  Created by Ambas Chobsanti on 23/6/19.
//  Copyright © 2019 Ambas Chobsanti. All rights reserved.
//

import UIKit

class TweetView: UIView {

    let stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureView() {
        let redView = UIView()
        redView.backgroundColor = .red
        let greenView = UIView()
        greenView.backgroundColor = .green
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(redView)
        stackView.addArrangedSubview(greenView)
        
        NSLayoutConstraint.activate([
            redView.heightAnchor.constraint(equalToConstant: 20),
            greenView.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor)
            ])
        
    }

}
