package main

import (
	"fmt"
	"os"
)

func main() {
	var s string
	fmt.Scan(&s)

	for i := 1; i < len(s); i++ {
		fin := len(s) - i
		if s[:fin/2] == s[fin/2:fin] {
			fmt.Println(fin)
			os.Exit(0)
		}
	}
}
