package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	max := 0
	count := 0

	for _, char := range strings.Split(s, "") {
		isInclude := false
		for _, target := range [4]string{"A", "C", "G", "T"} {
			if char == target {
				count++
				isInclude = true
				break
			}
		}
		if !isInclude {
			count = 0
		}
		if count > max {
			max = count
		}
	}
	fmt.Println(max)
}
