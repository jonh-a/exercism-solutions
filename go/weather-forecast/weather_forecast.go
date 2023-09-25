// Package weather blah blah.
package weather

// CurrentCondition is a variable.
var CurrentCondition string

// CurrentLocation is a variable.
var CurrentLocation string

// Forecast is a function.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
