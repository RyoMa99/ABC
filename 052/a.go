package main

import (
	"fmt"
	"os"
)

func main() {
	var a, b, c, d int
	fmt.Scan(&a, &b, &c, &d)
	if a*b > c*d {
		fmt.Println(a * b)
		os.Exit(0)
	}
	fmt.Println(c * d)
}
