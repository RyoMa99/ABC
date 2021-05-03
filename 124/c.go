package main

import (
	"fmt"
	"strings"
)

func main() {
	var str string
	fmt.Scan(&str)
	s := strings.Split(str, "")

	var correct_a []string
	var correct_b []string
	if len(s)%2 == 0 {
		correct_a = strings.Split(strings.Repeat("01", len(s)/2), "")
		correct_b = strings.Split(strings.Repeat("10", len(s)/2), "")
	} else {
		correct_a = strings.Split(strings.Repeat("01", len(s)/2)+"0", "")
		correct_b = strings.Split(strings.Repeat("10", len(s)/2)+"1", "")
	}

	count_a := 0
	count_b := 0

	for i, char := range s {
		if char != correct_a[i] {
			count_a++
		}

		if char != correct_b[i] {
			count_b++
		}
	}

	fmt.Println(min(count_a, count_b))
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
