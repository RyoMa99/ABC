package main

import "fmt"

func main() {
	var a, b string
	fmt.Scan(&a, &b)

	if a == "H" {
		if b == "H" {
			fmt.Println("H")
		} else {
			fmt.Println("D")
		}
	} else {
		if b == "H" {
			fmt.Println("D")
		} else {
			fmt.Println("H")
		}
	}
}
