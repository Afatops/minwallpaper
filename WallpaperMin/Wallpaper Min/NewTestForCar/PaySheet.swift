//
//  PaySheet.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 03.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI
import UserNotifications
import UIKit

struct PaySheet: View {
    @Binding var showingPaySheet: Bool
    
//    let notifications = Notifications()
    
    var body: some View {
        VStack {
            Text("Purchase subscription")
//            Button("Request Permission") {
//
//                let center = UNUserNotificationCenter.current()
//
//                let content = UNMutableNotificationContent()
//                content.title = "My title"
//                content.body = "Lots of text"
//                content.sound = UNNotificationSound.default
//                content.categoryIdentifier = "yourIdentifier"
//                content.userInfo = ["example": "information"] // You can retrieve this when displaying notification
//
//                // Setup trigger time
//                var calendar = Calendar.current
//                calendar.timeZone = TimeZone.current
////                let testDate = Date() + 5 // Set this to whatever date you need
//
//                var dateComponents = DateComponents()
////                dateComponents.weekday = 3  // Tuesday
//                dateComponents.minute = 2    // 14:00 hours
//                let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
//
//                // Create request
//                let uniqueID = UUID().uuidString // Keep a record of this if necessary
//                let request = UNNotificationRequest(identifier: uniqueID, content: content, trigger: trigger)
//                center.add(request) // Add the notification request
//
//
            
            
            
            
//         UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { success, error in
//                    if error == nil && success {
//                        print("we have permission")
//                    } else {
//                        print("something went wrong")
//                    }
//                }
//
//                UNUserNotificationCenter.current().getNotificationSettings{ (settings) in
//                    print("Notification settings: \(settings)")
//                }
//
//
//                // 1
//                var dateComponents = DateComponents()
//                dateComponents.weekday = 3  // Tuesday
//                dateComponents.hour = 11    // 14:00 hours
//                let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
//
//                // 2
//                let content = UNMutableNotificationContent()
//                let userActions = "User Actions"
//
//                content.title = "Daily reminder"
//                content.body = "Enjoy your day!"
//                content.sound = UNNotificationSound.default
//                content.badge = 1
//                content.categoryIdentifier = userActions
//
//                let uuidString = UUID().uuidString
//                let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
//
//
//                let deleteAction = UNNotificationAction(identifier: "Delete", title: "Delete", options: [.destructive])
//                let category = UNNotificationCategory(identifier: userActions,
//                                                      actions: [deleteAction],
//                                                      intentIdentifiers: [],
//                                                      options: [])
//                UNUserNotificationCenter.current().setNotificationCategories([category])
//
//                // 3
//                UNUserNotificationCenter.current().add(request) { error in
//                    if error != nil {
//                        print("something went wrong")
//                    }
//                }
//
//
//            }
        }
    }
}



