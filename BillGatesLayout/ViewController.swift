//
//  ViewController.swift
//  BillGatesLayout
//
//  Created by MahmoudRamadan on 4/14/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView : UIImageView!
    var nameButton : UIButton!
    var descriptionText : UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        //imageview 
        imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "ramadan")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        //UIButton
        nameButton = UIButton()
        nameButton.translatesAutoresizingMaskIntoConstraints = false
        nameButton.setTitle("HI , I am Ramadan ", for: .normal)
        nameButton.setTitleColor(.black, for: .normal)
        nameButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        nameButton.addTarget(self, action: #selector(nameButtonPressed), for: .touchUpInside)
        view.addSubview(nameButton)
        //UITextView
        descriptionText = UITextView()
        descriptionText.translatesAutoresizingMaskIntoConstraints = false
        descriptionText.text = "I am Mahmoud Ramadan. I am Software Engineer with 7 years Experience in Android Development.I am interested in IOS and MERN Full Stack Development.I wrote one book about Dependency Injection also I am online Instructor for different Online platforms like Udemy and Skillshare.This is my blog http://mahmoudramadan.me/blog"
        descriptionText.font = UIFont.systemFont(ofSize: 16)
        descriptionText.isEditable = false
        descriptionText.textColor = .white
        descriptionText.backgroundColor = .purple
        view.addSubview(descriptionText)
        
        
        setupConstraints()
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 64),
            imageView.widthAnchor.constraint(equalToConstant: 64)
        ])
        
        NSLayoutConstraint.activate([
            nameButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            nameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            nameButton.widthAnchor.constraint(equalToConstant: 200),
            nameButton.heightAnchor.constraint(equalToConstant: 25)
          
        ])
        
        
        NSLayoutConstraint.activate([
            descriptionText.topAnchor.constraint(equalTo: nameButton.bottomAnchor, constant: 20),
            descriptionText.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            descriptionText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            descriptionText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            descriptionText.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8)
        ])
    }
    
    @objc func nameButtonPressed(){
        //print("name button pressed")
        if nameButton.titleColor(for: .normal) == .black{
            nameButton.setTitleColor(.blue, for: .normal)
        }else{
            
            nameButton.setTitleColor(.black, for: .normal)
        }
    }
    
    
}

