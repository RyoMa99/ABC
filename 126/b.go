package main

import (
	"fmt"
	"strconv"
)

func main() {
	var str string
	fmt.Scan(&str)

	ans := "NA"
	if isMM(str[2:]) {
		ans = "YYMM"
	}
	if isMM(str[:2]) {
		if ans != "NA" {
			ans = "AMBIGUOUS"
		} else {
			ans = "MMYY"
		}
	}

	fmt.Println(ans)
}

func isMM(str string) bool {
	num, _ := strconv.Atoi(str)
	if 1 <= num && num <= 12 {
		return true
	}
	return false
}
