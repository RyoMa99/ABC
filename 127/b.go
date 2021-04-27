package main

import "fmt"

func main() {
	var r, d, x int
	fmt.Scan(&r, &d, &x)
	var next int
	next = x
	for i := 0; i < 10; i++ {
		next = r*next - d
		fmt.Println(next)
	}
}
