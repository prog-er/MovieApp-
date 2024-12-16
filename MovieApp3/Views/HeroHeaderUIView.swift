//
//  HeroHeaderUIView.swift
//  MovieApp3
//
//  Created by Olzhas Karibayev on 20.11.2024.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let movieLabel: UILabel = {
        let label = UILabel()
        label.text = "Movies"
        label.textColor = .black
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let themeLabel: UILabel = {
        let label = UILabel()
        label.text = "Theme"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let popularButton: UIButton = {
        let button = UIButton()
        button.setTitle("Popular", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        button.backgroundColor = .systemRed
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let nowPlayingButton: UIButton = {
        let button = UIButton()
        button.setTitle("Now Playing", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let upcomingButton: UIButton = {
        let button = UIButton()
        button.setTitle("Upcoming", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(movieLabel)
        addSubview(themeLabel)
        addSubview(popularButton)
        addSubview(nowPlayingButton)
        addSubview(upcomingButton)
        applyConstraints()
    }
    
    private func applyConstraints() {
        
        let movieLabelConstraints = [
            movieLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 160 ),
            movieLabel.topAnchor.constraint(equalTo: topAnchor, constant: 25)
        ]
        
        let themeLabelConstraints = [
            themeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25 ),
            themeLabel.topAnchor.constraint(equalTo: movieLabel.topAnchor, constant: 45)
        ]
        
        let popularButtonConstraints  = [
            popularButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20 ),
            popularButton.topAnchor.constraint(equalTo: themeLabel.topAnchor, constant: 40),
            popularButton.widthAnchor.constraint(equalToConstant: 80)
        ]
        
        let nowPlayingButtonConstraints  = [
            nowPlayingButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 110 ),
            nowPlayingButton.topAnchor.constraint(equalTo: themeLabel.topAnchor, constant: 40),
            nowPlayingButton.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        let upcomingButtonConstraints  = [
            upcomingButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 220 ),
            upcomingButton.topAnchor.constraint(equalTo: themeLabel.topAnchor, constant: 40),
            upcomingButton.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        NSLayoutConstraint.activate(movieLabelConstraints)
        NSLayoutConstraint.activate(themeLabelConstraints)
        NSLayoutConstraint.activate(popularButtonConstraints)
        NSLayoutConstraint.activate(nowPlayingButtonConstraints)
        NSLayoutConstraint.activate(upcomingButtonConstraints)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
