//
//  CalculadoraPerrunaUITests.swift
//  CalculadoraPerrunaUITests
//
//  Created by Saul Cortez Garcia  (Vendor) on 25/02/21.
//

import XCTest

class CalculadoraPerrunaUITests: XCTestCase {

    func test_set82YeardInHumanLabel_whenMoveSliderTo25() throws {
        let app = makeSUT()

        let humaAgeLabel = app.staticTexts["humanAgeLabelID"]
        
        app.sliders["dogAgeID"].adjust(toNormalizedSliderPosition: 1.0)
        
        XCTAssertEqual(humaAgeLabel.label, "82")
    }
    
    func test_openInfoView_whenInfoButtonIsTapped() {
       
        let app = makeSUT()
        
        let infoButton = app.buttons["infoID"]
        XCTAssertTrue(infoButton.exists)
        infoButton.tap()

        XCTAssertTrue(app.otherElements["infoViewID"].exists)
    }
    
    func test_openLink_whenButtonIsTapped() {
       
        let app = makeSUT()
        
        let infoButton = app.buttons["infoID"]
        XCTAssertTrue(infoButton.exists)
        infoButton.tap()

        XCTAssertTrue(app.otherElements["infoViewID"].exists)
        
        
        
        let linkButton = app.buttons["natGeoLinkID"]
        
        XCTAssertTrue(linkButton.isHittable)

        
        linkButton.tap()
        //TODO: Validate is was tapped
    }
    
    // Helpers
    private func makeSUT() -> XCUIApplication {
        let app = XCUIApplication()
        app.launch()
        return app
    }

}
