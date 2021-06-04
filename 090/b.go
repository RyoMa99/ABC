package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	ans := 0
	for i := a; i <= b; i++ {
		s := strconv.Itoa(i)
		if s == Reverse(s) {
			ans++
		}
	}

	fmt.Println(ans)
}

func Reverse(s string) string {
	runes := []rune(s)

	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}

	return string(runes)
}
