//
//  TemperatureConverterTests.swift
//  ConvertidorTemperaturaTests
//
//  Created by user189791 on 8/19/21.
//

import XCTest
@testable import ConvertidorTemperatura
class TemperatureConverterTests: XCTestCase {
    
    let temperatureConverter = TemperatureConverter()
    
    func testConvertCelsius0ToCelsius() throws {
        // Given
        let input = Temperature(value: 0, unit: Temperature.Unit.CELSIUS)
        // When
        let result = temperatureConverter.convert(temperature: input, unitToConvert: Temperature.Unit.CELSIUS)
        // Then
        let expectedValue: Float16 = 0
        let expectedUnit = Temperature.Unit.CELSIUS
        XCTAssertEqual(result.value, expectedValue)
        XCTAssertEqual(result.unit, expectedUnit)
    }
    
    func testConvertCelsius0ToFahrenheit() throws {
        // Given
        let input = Temperature(value: 0, unit: Temperature.Unit.CELSIUS)
        // When
        let result = temperatureConverter.convert(temperature: input, unitToConvert: Temperature.Unit.FAHRENHEIT)
        // Then
        let expectedValue: Float16 = 32
        let expectedUnit = Temperature.Unit.FAHRENHEIT
        XCTAssertEqual(result.value, expectedValue)
        XCTAssertEqual(result.unit, expectedUnit)
    }
    func testConvertFahrenheit68ToCelsius() throws {
        // Given
        let input = Temperature(value: 68, unit: Temperature.Unit.FAHRENHEIT)
        // When
        let result = temperatureConverter.convert(temperature: input, unitToConvert: Temperature.Unit.CELSIUS)
        // Then
        let expectedValue: Float16 = 20
        let expectedUnit = Temperature.Unit.CELSIUS
        XCTAssertEqual(result.value, expectedValue)
        XCTAssertEqual(result.unit, expectedUnit)
        
    }
    func testConvertFahrenheit0ToFahrenheit() throws {
        // Given
        let input = Temperature(value: 0, unit: Temperature.Unit.FAHRENHEIT)
        // When
        let result = temperatureConverter.convert(temperature: input, unitToConvert: Temperature.Unit.FAHRENHEIT)
        // Then
        let expectedValue: Float16 = 0
        let expectedUnit = Temperature.Unit.FAHRENHEIT
        XCTAssertEqual(result.value, expectedValue)
        XCTAssertEqual(result.unit, expectedUnit)
    }

}

