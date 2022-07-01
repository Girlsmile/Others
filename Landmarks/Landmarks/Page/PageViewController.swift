//
//  PageViewController.swift
//  Landmarks
//
//  Created by flow on 1.7.22.
//

import Foundation
import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    typealias UIViewControllerType = <#type#>
    
    var pages: [Page]

    func makeUIViewController(context: Context) -> UIPageViewController {
           let pageViewController = UIPageViewController(
               transitionStyle: .scroll,
               navigationOrientation: .horizontal)

           return pageViewController
       }

       func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
           pageViewController.setViewControllers(
               [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
       }
}
