package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	var restaurants []Restaurant

	for i := 0; i < n; i++ {
		var city string
		var point int
		fmt.Scan(&city, &point)
		restaurant := Restaurant{i + 1, city, point}
		restaurants = append(restaurants, restaurant)
	}

	sort.SliceStable(restaurants, func(i, j int) bool {
		return restaurants[i].point > restaurants[j].point
	})

	sort.SliceStable(restaurants, func(i, j int) bool {
		return restaurants[i].city < restaurants[j].city
	})

	for _, v := range restaurants {
		fmt.Println(v.number)
	}
}

type Restaurant struct {
	number int
	city   string
	point  int
}
