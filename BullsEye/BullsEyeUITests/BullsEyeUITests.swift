
import XCTest

class BullsEyeUITests: XCTestCase {
     
  override func setUp() {
        
  }
  
  func testGameStyleSwitch() throws {
    
    // UI tests must launch the application that they test.
    let app = XCUIApplication()
    app.launch()
    
    // Use recording to get started writing UI tests.
    // For example pressing the red recording button at bottom of this page will launch the app, you can then tap on any of the ui controls and they will appear
    // in here as new lines of code e.g
    /*
     app.buttons["Slide"].tap()
     app.staticTexts["Get as close as you can to: "].tap()
     */
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    //this test will launch the app e.g in simulator and simulate the tap on UI
    
    // given
    let slideButton = app.segmentedControls.buttons["Slide"]
    let typeButton = app.segmentedControls.buttons["Type"]
    let slideLabel = app.staticTexts["Get as close as you can to: "]
    let typeLabel = app.staticTexts["Guess where the slider is: "]

    
    // then
    if slideButton.isSelected {
      XCTAssertTrue(slideLabel.exists)
      XCTAssertFalse(typeLabel.exists)
      
      typeButton.tap()
      XCTAssertTrue(typeLabel.exists)
      XCTAssertFalse(slideLabel.exists)
      
    } else if typeButton.isSelected {
      
      XCTAssertTrue(typeLabel.exists)
      XCTAssertFalse(slideLabel.exists)
      
      slideButton.tap()
      XCTAssertTrue(slideLabel.exists)
      XCTAssertFalse(typeLabel.exists)
    }
    
  }
  
//  func testLaunchPerformance() throws {
//    if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
//      // This measures how long it takes to launch your application.
//      measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
//        XCUIApplication().launch()
//      }
//    }
//  }
}
