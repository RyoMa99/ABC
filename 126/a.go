package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var s string
	fmt.Scan(&s)

	fmt.Println(s[:k-1] + strings.ToLower(s[k-1:k]) + s[k:])
}
