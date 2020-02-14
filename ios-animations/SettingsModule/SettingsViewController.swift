//
//  SettingsViewController.swift
//  ios-animations
//
//  Created by Roman Guseynov on 15.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    let viewModel: SettingsViewModel
    
    private lazy var closeButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Close", for: .normal)
        button.addTarget(self, action: #selector(closeButtonPressed), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle
    init(viewModel: SettingsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(closeButton)
        viewModel.didTriggerViewReadyEvent()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        closeButton.frame.size = CGSize(width: 50, height: 50)
        closeButton.center = view.center
    }
    
    @objc private func closeButtonPressed(_ sender: UIButton) {
        viewModel.closeEvent()
    }
}
