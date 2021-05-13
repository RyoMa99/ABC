package main

import "fmt"

func main() {
	var w, a, b int
	fmt.Scan(&w, &a, &b)
	larger, smaller := compairNum(a, b)

	if larger > smaller+w {
		fmt.Println(larger - (smaller + w))
	} else {
		fmt.Println(0)
	}
}

func compairNum(a, b int) (larger, smaller int) {
	if a > b {
		return a, b
	}
	return b, a
}
