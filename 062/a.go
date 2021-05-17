package main

import (
	"fmt"
	"os"
)

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	if x == 2 && y == 2 {
		fmt.Println("Yes")
		os.Exit(0)
	}

	exist_x := false
	exist_y := false
	for _, num := range []int{1, 3, 5, 7, 8, 10, 12} {
		if num == x {
			exist_x = true
		}
		if num == y {
			exist_y = true
		}

		if exist_x && exist_y {
			fmt.Println("Yes")
			os.Exit(0)
		}
	}

	exist_x = false
	exist_y = false
	for _, num := range []int{4, 6, 9, 11} {
		if num == x {
			exist_x = true
		}
		if num == y {
			exist_y = true
		}

		if exist_x && exist_y {
			fmt.Println("Yes")
			os.Exit(0)
		}
	}

	fmt.Println("No")
}
