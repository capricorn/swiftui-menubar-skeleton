import Foundation
import AppKit

class AppDelegate: NSObject, NSApplicationDelegate {
    private var statusItem: NSStatusItem!
    
    @objc
    private func foo(sender: NSMenuItem) {
        print("Clicked item: \(sender.title)")
    }
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusItem.button?.title = "Hello World"
        
        let menu = NSMenu()
        let menuItem = NSMenuItem(title: "Test", action: #selector(self.foo(sender:)), keyEquivalent: "")
        
        menuItem.target = self
        
        menu.addItem(menuItem)
        statusItem.menu = menu
    }
}
