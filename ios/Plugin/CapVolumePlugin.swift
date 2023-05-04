import Foundation
import Capacitor
import AVFoundation
import MediaPlayer

@objc(CapVolumePlugin)
public class CapVolumePlugin: CAPPlugin {
    private let implementation = CapVolume()

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

    @objc func getVolume(_ call: CAPPluginCall) {
        let audioSession = AVAudioSession.sharedInstance()
        let currentVolume = audioSession.outputVolume
        call.resolve([
            "volume": implementation.echo(String(currentVolume))
        ])
    }
}
