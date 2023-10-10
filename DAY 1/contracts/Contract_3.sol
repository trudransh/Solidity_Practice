//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WeatherStatistics {
    enum WeatherCondition {
        Sunny,
        Cloudy,
        Rainy,
        Stormy
    }

    struct WeatherReport {
        uint256 timestamp;
        uint256 temperature;
        WeatherCondition condition;
    }

    function calculateAverageTemperatureByCondition(
        WeatherReport[] memory reports,
        WeatherCondition _condition
    ) public pure returns (uint256) {
        uint256 sum = 0;
        uint256 count = 0;
        for (uint256 i = 0; i < reports.length; i++) {
            if (reports[i].condition == _condition) {
                sum += reports[i].temperature;
                count++;
            }
        }
        if (count == 0) return 0; // Avoid division by zero
        return sum / count;
    }
}
