package main

import (
	"fmt"
	"os"
)

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)

	for i := min(a, b); i > 0; i-- {
		if a%i == 0 && b%i == 0 {
			k--
			if k == 0 {
				fmt.Println(i)
				os.Exit(0)
			}
		}
	}
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
