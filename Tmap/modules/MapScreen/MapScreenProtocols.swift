//
//  MapScreenProtocols.swift
//  Tmap
//
//  Created by mhlee on 2020-03-13.
//  Copyright © 2020 mhlee. All rights reserved.
//

import Foundation

protocol MapScreenCoordinatorProtocol {
  static func createModule() -> MapScreenViewProtocol
}

protocol MapScreenViewProtocol {
  var viewModel: MapScreenViewModelProtocol? { get set }
}

protocol MapScreenViewModelProtocol {
  var coordinator: MapScreenCoordinatorProtocol? { get set } 
  var SKTMapApiKey: String { get }
  func viewDidLoad()
}
