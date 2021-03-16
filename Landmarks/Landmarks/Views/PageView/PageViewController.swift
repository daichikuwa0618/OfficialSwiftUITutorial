//
//  PageViewController.swift
//  Landmarks
//
//  Created by Daichi Hayashi on 2021/03/16.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]

    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )

        return pageViewController
    }

    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers(
            [UIHostingController(rootView: pages[0])], direction: .forward, animated: true
        )
    }
}
