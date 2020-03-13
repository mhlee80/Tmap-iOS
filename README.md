#  Tmap-iOS

## SDK 설치 과정

1. create "Libraries" Group at $(PROJECT_DIR)
2. add TmapSDK to "Libraries"
3. create Tmap-Bridging-Header.h" at $(PROJECT_DIR)/Tmap
4. add Target -> Build Settings -> Objective-C Bridging Header $(PROJECT_DIR)/Tmap/Tmap-Bridging-Header.h
5. update Tmap-Bridging-Header.h
```
#import "BizCategory.h"
#import "TMap.h"
#import "TMapAnnotation.h"
#import "TMapBaseView.h"
#import "TMapCircle.h"
#import "TMapGpsManager.h"
#import "TMapKatec.h"
#import "TMapMarkerItem.h"
#import "TMapMarkerItem2.h"
#import "TMapObject.h"
#import "TMapOverlayItem.h"
#import "TMapPathData.h"
#import "TMapPOIItem.h"
#import "TMapPoint.h"
#import "TMapPolygon.h"
#import "TMapPolyLine.h"
#import "TMapTapi.h"
#import "TMapType.h"
#import "TMapView.h"
```
6. update BizCategory.h
```
#import <Foundation/Foundation.h>
```
7. update TMapView.h
```
#import "TMapPoint.h"
#import "TMapObject.h"
#import "TMapMarkerItem.h"
#import "TMapMarkerItem2.h"
#import "TMapGpsManager.h"
#import "TMapCircle.h"
#import "TMapPolygon.h"
#import "TMapPolyLine.h"
#import "TMapOverlayItem.h"
#import "TMapPOIItem.h"
```
8. build
9. update info.plist
```
Privacy - Location When In Use Usage Description: 위치정보를 사용합니다. 
App Transport Security Settings -> Allow Arbitrary Loads: YES
```
