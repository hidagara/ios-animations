//
//  ViewController.swift
//  ios-animations
//
//  Created by Roman Guseynov on 14.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import UIKit

struct AnimationInfo {
  let name: String
}
class ViewController: UIViewController {
  var collectionViewWidthConstraint: NSLayoutConstraint!
  var collectionView: UICollectionView!

  var animationList = [AnimationInfo]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    animationList.append(AnimationInfo(name: "Move View Animations"))
    animationList.append(AnimationInfo(name: "CGAffine Transformations"))
    animationList.append(AnimationInfo(name: "Animate Transitions"))
    animationList.append(AnimationInfo(name: "Some useful animations"))
    setupCollectionView()
    
  }

  private func setupCollectionView() {
    let layout = UICollectionViewFlowLayout()
    layout.itemSize = CGSize(width: 100, height: 100)
    layout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
    collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    collectionView.dataSource = self
    collectionView.delegate = self
    self.view.addSubview(collectionView)
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
    collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
    collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 50).isActive = true
    collectionViewWidthConstraint = collectionView.widthAnchor.constraint(equalToConstant: view.frame.width)
    collectionViewWidthConstraint.isActive = true
    collectionView.register(AnimationCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    collectionView.backgroundColor = .white
  }
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    collectionViewWidthConstraint.isActive = false
    collectionViewWidthConstraint =  collectionView.widthAnchor.constraint(equalToConstant: view.frame.width)
    collectionViewWidthConstraint.isActive = true
  }
}
// MARK: UICollectionViewDataSources
extension ViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! AnimationCollectionViewCell
    cell.setupCell(with: animationList[indexPath.row])
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return animationList.count
  }
}

// MARK: UICollectionViewDelegate
extension ViewController: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    collectionView.deselectItem(at: indexPath, animated: true)
  }
}


class AnimationCollectionViewCell: UICollectionViewCell {
  var nameLabel: UILabel!
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.setupCellView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupCellView() {
    layer.cornerRadius = 8
    layer.backgroundColor = UIColor.white.cgColor
    layer.shadowOffset = CGSize(width: 5, height: 5)
    layer.shadowRadius = 5
    layer.shadowOpacity = 0.3
    nameLabel = UILabel(frame: CGRect(x: 5, y: 5, width: 100, height: 50))
    nameLabel.translatesAutoresizingMaskIntoConstraints = false
   
    addSubview(nameLabel)
     nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
    nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
    nameLabel.numberOfLines = 0
    nameLabel.font = .monospacedDigitSystemFont(ofSize: 14, weight: .black)
    nameLabel.textAlignment = .center
  }
  
  func setupCell(with animationInfo: AnimationInfo) {
    nameLabel.text = animationInfo.name
    nameLabel.sizeToFit()
  }
}
