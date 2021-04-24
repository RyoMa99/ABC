package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	arr := strings.Split(s, "")

	for i := 0; i < len(arr)-1; i++ {
		if arr[i] == arr[i+1] {
			fmt.Println("Bad")
			os.Exit(0)
		}
	}
	fmt.Println("Good")
}
