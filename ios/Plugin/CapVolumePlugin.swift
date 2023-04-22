import Foundation
import Capacitor
import AVFoundation
import MediaPlayer
/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapVolumePlugin)
public class CapVolumePlugin: CAPPlugin {
    private let implementation = CapVolume()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
    @objc func setVolume(_ call: CAPPluginCall) {        
        let volume = call.getFloat("volume") ?? 1
        let volumeView = MPVolumeView(frame: .zero)
        volumeView.showsRouteButton = false
        let slider = volumeView.subviews.first(where: { $0 is UISlider }) as? UISlider
        slider?.setValue(volume, animated: false)
        call.resolve([
            "volume": implementation.echo(String(volume))
        ])
    }
}
