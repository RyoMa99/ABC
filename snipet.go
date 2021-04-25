package main

import (
	"bufio"
	"os"
)

func readline() []string {
	sc := bufio.NewScanner(os.Stdin)
	var lines []string
	for sc.Scan() {
		lines = append(lines, sc.Text())
	}
	return lines
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func sum(slice []int) int {
	var sum int
	for _, x := range slice {
		sum += x
	}
	return sum
}
