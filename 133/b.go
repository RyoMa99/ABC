package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	d, _ := strconv.Atoi(sc.Text())

	arr := make([][]int, d)

	for i := 0; i < n; i++ {
		for j := 0; j < d; j++ {
			sc.Scan()
			num, _ := strconv.Atoi(sc.Text())
			arr[j] = append(arr[j], num)
		}
	}

	for j := 0; j < d; j++ {
		arr[j] = append(arr[j], arr[j][0])
	}

	count := 0

	for i := 0; i < n; i++ {
		for k := i + 1; k < n; k++ {
			var len float64 = 0
			for j := 0; j < d; j++ {
				len += math.Pow(float64(arr[j][i]-arr[j][k]), 2)
			}
			len = math.Sqrt(len)
			if math.Floor(len) == len {
				count++
			}
		}
	}

	fmt.Println(count)
}
