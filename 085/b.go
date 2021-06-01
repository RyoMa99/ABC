package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	d_s := make(map[int]int)
	for i := 0; i < n; i++ {
		var d int
		fmt.Scan(&d)
		d_s[d]++
	}

	fmt.Println(len(d_s))
}
