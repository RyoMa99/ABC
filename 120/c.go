package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	cubes := strings.Split(s, "")

	red := 0
	blue := 0

	for _, cube := range cubes {
		if cube == "0" {
			red++
		} else {
			blue++
		}
	}
	fmt.Println(min(red, blue) * 2)
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
