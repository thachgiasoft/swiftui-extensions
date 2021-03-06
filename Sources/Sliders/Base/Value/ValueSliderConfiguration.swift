import SwiftUI

public struct ValueSliderConfiguration {
    public static let defaultConfiguration = ValueSliderConfiguration()

    public let options: Options
    public let thumbSize: CGSize
    public let thumbInteractiveSize: CGSize
    
    public init(options: Options = .defaultOptions, thumbSize: CGSize = .defaultThumbSize, thumbInteractiveSize: CGSize = .defaultThumbInteractiveSize) {
        self.options = options
        self.thumbSize = thumbSize
        self.thumbInteractiveSize = thumbInteractiveSize
    }
}

public extension ValueSliderConfiguration {
    struct Options: OptionSet {
        public let rawValue: Int

        public static let interactiveTrack = Options(rawValue: 1 << 0)
        public static let defaultOptions: Options = []
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
    }
}

extension ValueSliderConfiguration {
    static let defaultThumbSize: CGSize = CGSize(width: 27, height: 27)
    static let defaultThumbInteractiveSize : CGSize = CGSize(width: 44, height: 44)
}

extension ValueSliderConfiguration {
    var horizontalTrackConfiguration: ValueTrackConfiguration {
        ValueTrackConfiguration(
            leadingOffset: thumbSize.width / 2,
            trailingOffset: thumbSize.width / 2
        )
    }
    
    var verticalTrackConfiguration: ValueTrackConfiguration {
        ValueTrackConfiguration(
            leadingOffset: thumbSize.height / 2,
            trailingOffset: thumbSize.height / 2
        )
    }
}
