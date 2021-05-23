package main

import (
	"fmt"
	"os"
)

func main() {
	var s string
	fmt.Scan(&s)

	if s[:1] == s[2:] {
		fmt.Println("Yes")
		os.Exit(0)
	}
	fmt.Println("No")
}
