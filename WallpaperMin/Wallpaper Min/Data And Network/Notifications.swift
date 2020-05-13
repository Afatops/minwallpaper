//
//  Notifications.swift
//  MinPaper
//
//  Created by Александр Редин on 07.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import UIKit
import SwiftUI
import UserNotifications

class Notifications: NSObject, UNUserNotificationCenterDelegate {
    let notificationCenter = UNUserNotificationCenter.current()
    
    func requestAutorization() {
        notificationCenter.requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            print("Permission granted: \(granted)")
            
            self.getNotificationSettings()
        }
    }
    
    func getNotificationSettings() {
        notificationCenter.getNotificationSettings { (settings) in
            print("Notification settings: \(settings)")
        }
    }
    
    func scheduleNotification(notificationType: String) {
        let content = UNMutableNotificationContent()
        let userActions = "User Actions"
        
        content.title = "My title"
        content.body = "Watching new backgrouds"
        content.sound = UNNotificationSound.default
        content.badge = 1
        content.categoryIdentifier = userActions
        
        guard let path = Bundle.main.path(forResource: "Minpaper_icon", ofType: "png") else { return }
        let url = URL(fileURLWithPath: path)
        
        do {
            let attacment = try UNNotificationAttachment(identifier: "favicon",
                                                     url: url,
                                                     options: nil)
            
            content.attachments = [attacment]
        } catch {
            print("The attacment cold not be loaded")
        }
        
//        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let identifier = "Minpaper"
        
        // Configure the recurring date.
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.timeZone = TimeZone.current

        dateComponents.weekday = 3  // Tuesday
        dateComponents.hour = 11    // 14:00 hours
        dateComponents.minute = 48
        dateComponents.second = 20
        // Create the trigger as a repeating event.
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)

        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        notificationCenter.add(request) { (error) in
            if let error = error {
                print("Error \(error.localizedDescription)")
            }
        }

        
        
        let deleteAction = UNNotificationAction(identifier: "Delete", title: "Delete", options: [.destructive])
        let category = UNNotificationCategory(identifier: userActions,
                                              actions: [deleteAction],
                                              intentIdentifiers: [],
                                              options: [])
        notificationCenter.setNotificationCategories([category])
    }
    
    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification,
        withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .sound])
    }
    
    func userNotification(
        _ center: UNUserNotificationCenter,
        didReceive response: UNNotificationResponse,
        withCompletionHandler completionHandler: @escaping () -> Void) {
        if response.notification.request.identifier == "Local Not" {
            print("Handling notification with the local")
        }
        completionHandler()
    }
}
