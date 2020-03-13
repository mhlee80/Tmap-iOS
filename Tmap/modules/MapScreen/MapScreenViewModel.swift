//
//  MapScreenViewModel.swift
//  Tmap
//
//  Created by mhlee on 2020-03-13.
//  Copyright © 2020 mhlee. All rights reserved.
//

import Foundation

class MapScreenViewModel: NSObject, MapScreenViewModelProtocol {
  var coordinator: MapScreenCoordinatorProtocol?
  
  var SKTMapApiKey: String = ""
  
  func viewDidLoad() {
    log.info("")
  }
}
