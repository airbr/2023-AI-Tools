// Create program which checks if a website is up or down
package main

import (
	"fmt"
	"net/http"
)

func main() {
	// Create a slice of websites
	sites := []string{
		"https://www.google.com",
		"https://www.wikipedia.org",
		"https://www.doesnotexistexample.org",
	}

	// Loop through the websites and check if they are up or down
	for _, site := range sites {
		_, err := http.Get(site)
		if err != nil {
			fmt.Println(site, "is down!")
		} else {
			fmt.Println(site, "is up!")
		}
	}
}
