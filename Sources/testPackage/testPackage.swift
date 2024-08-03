// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import UIKit
import WebKit

public class MediumWebView: WKWebView {
    
    public init() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.preferences.javaScriptEnabled = true
        super.init(frame: .zero, configuration: webConfiguration)
        self.scrollView.isScrollEnabled = false
        self.isMultipleTouchEnabled = false
        print("version: \(info.version)")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @discardableResult
    public func load() -> WKNavigation? {
        if let url = URL(string:"http://google.com") {
            let req = URLRequest(url: url)
            return super.load(req)
        }
        return nil
    }
}


struct info {
    static var version = "1.0.0"
}
