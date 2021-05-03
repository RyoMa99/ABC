package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	if a == b {
		fmt.Println(a * 2)
	} else if a > b {
		fmt.Println(a*2 - 1)
	} else if b > a {
		fmt.Println(b*2 - 1)
	}
}
