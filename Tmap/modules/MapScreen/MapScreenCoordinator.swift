//
//  MapScreenCoordinator.swift
//  Tmap
//
//  Created by mhlee on 2020-03-13.
//  Copyright © 2020 mhlee. All rights reserved.
//

import Foundation
import UIKit

class MapScreenCoordinator: NSObject, MapScreenCoordinatorProtocol {
  static func createModule() -> MapScreenViewProtocol {
    let view = MapScreenView()
    let viewModel = MapScreenViewModel()
    let coordinator = MapScreenCoordinator()

    view.viewModel = viewModel
    viewModel.coordinator = coordinator

    return view
  }
}
