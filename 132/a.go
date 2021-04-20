package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	s_arr := strings.Split(s, "")

	ans := make([]string, 0)
	for _, char := range s_arr {
		if !contain(ans, char) {
			ans = append(ans, char)
		}
	}

	if len(ans) == 2 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func contain(s []string, c string) bool {
	for _, el := range s {
		if el == c {
			return true
		}
	}
	return false
}
