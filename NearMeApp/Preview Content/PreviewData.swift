import Foundation
import MapKit
import Contacts

struct PreviewData {
    static var apple: MKMapItem {
        let coordinate = CLLocationCoordinate2D(latitude: 37.3318, longitude: -122.0311)
        
        let adressDictionary: [String: Any] = [
            CNPostalAddressStreetKey: "1 Infinite Loop",
            CNPostalAddressCityKey: "Cupertino",
            CNPostalAddressStateKey: "CA",
            CNPostalAddressPostalCodeKey: "95014",
            CNPostalAddressCountryKey: "United States"
        ]
        let placemark = MKPlacemark(
            coordinate: coordinate,
            addressDictionary: adressDictionary
        )
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Apple Inc."
        return mapItem
    }
}
