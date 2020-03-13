
//
//  MapScreenView.swift
//  Tmap
//
//  Created by mhlee on 2020-03-13.
//  Copyright © 2020 mhlee. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import SnapKit

class MapScreenView: UIViewController, MapScreenViewProtocol {
  private var disposeBag = DisposeBag()
  
  var viewModel: MapScreenViewModelProtocol? {
    didSet {
      setupBind()
    }
  }
  
  lazy var mapContainerView: UIView = {
    let v = UIView()
    return v
  }()
  
  lazy var mapView: TMapView = {
    let v = TMapView()
    v.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    return v
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    view.backgroundColor = .white
    
    mapContainerView.addSubview(mapView)
    view.addSubview(mapContainerView)
    
    mapContainerView.snp.makeConstraints { make in
      make.top.left.equalToSuperview().offset(50)
      make.bottom.right.equalToSuperview().offset(-50)
    }
    
    DispatchQueue.main.async { [weak self] in
      self?.viewModel?.viewDidLoad()
    }
  
    mapView.delegate = self
    mapView.gpsManagersDelegate = self
    mapView.setSKTMapApiKey(viewModel?.SKTMapApiKey ?? "")
    TMapTapi.setSKTMapAuthenticationWith(self, apiKey: viewModel?.SKTMapApiKey ?? "")
    
//    let centerPoint = TMapPoint(coordinate: CLLocationCoordinate2DMake(37.401933, 126.922651))
//    mapView.setCenter(centerPoint)

//    지정된 위치에 TmapSDK/Images/TrackingDot 표시
//    mapView.setLocationPoint(TMapPoint(coordinate: CLLocationCoordinate2DMake(37.401933, 126.922651)))
    
//    마커 표시
//    let markerPoint = TMapPoint(coordinate: CLLocationCoordinate2DMake(37.401933, 126.922651))
//    let marker = TMapMarkerItem(tMapPoint: markerPoint)
//    let iconPath = Bundle.main.path(forResource: "location", ofType: "png")
//    let icon = UIImage(contentsOfFile: iconPath!)
//    marker?.setIcon(icon!)
//    marker?.setName("my marker")
//    mapView.addTMapMarkerItemID("1", marker: marker)

//    동작 안함
//    let minLat = 37.42852
//    let maxLat = 37.714784
//    let minLon = 126.750897
//    let maxLon = 127.196529
//    let center = CLLocationCoordinate2DMake((minLat + maxLat)/2, (minLon + maxLon)/2)
//    mapView.zoom(toLatSpan: maxLat - minLat, lonSpan: maxLon - minLon)
//    mapView.setCenter(center)


//    let minLat = 37.42852
//    let maxLat = 37.714784
//    let minLon = 126.750897
//    let maxLon = 127.196529
//    let center = CLLocationCoordinate2DMake((minLat + maxLat)/2, (minLon + maxLon)/2)
//    mapView.zoomLevel = 15
//    mapView.setCenter(center)
  }
  
  private func setupBind() {
    disposeBag = DisposeBag()
  }
}

extension MapScreenView: TMapViewDelegate {
  func sktMapApikeySucceed() {
    log.info("")
  }
  
  func sktMapApikeyFailed(_ error: Error!) {
    log.info(error)
  }
  
  func onClick(_ TMP: TMapPoint!) {
    log.info("")
  }
  
  func onLongClick(_ TMP: TMapPoint!) {
    log.info("")
  }
  
  func onDidScroll(withZoomLevel zoomLevel: Int, center mapPoint: TMapPoint!) {
    log.info("")
  }
  
  func onDidEndScroll(withZoomLevel zoomLevel: Int, center mapPoint: TMapPoint!) {
    log.info("")
  }
}

extension MapScreenView: TMapGpsManagerDelegate {
  func locationChanged(_ newTmp: TMapPoint!) {
    log.info("")
  }
  
  func headingChanged(_ heading: Double) {
    log.info("")
  }
}

extension MapScreenView: TMapTapiDelegate {
}
