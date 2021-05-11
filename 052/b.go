package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	x := 0
	max := 0

	for _, char := range strings.Split(s, "") {
		switch char {
		case "I":
			x++
		case "D":
			x--
		}
		if x >= max {
			max = x
		}
	}

	fmt.Println(max)
}
