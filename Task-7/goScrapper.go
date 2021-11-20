package main

import (
	"encoding/csv"
	"fmt"
	"log"
	"os"

	"github.com/gocolly/colly"
)

func main() {

	fName := "data.csv"
	file, err := os.Create(fName)
	if err != nil {
		log.Fatalf("Could not create create file, err :%q", err)
		return
	}
	defer file.Close()

	writer := csv.NewWriter(file)
	defer writer.Flush()

	c := colly.NewCollector(
		colly.AllowedDomains("https://www.forbes.com/real-time-billionaires/#4f167f5e3d78"),
	)
	c.OnError(func(_ *colly.Response, err error) {
		fmt.Println("Error:", err.Error())
	})
	c.OnResponse(func(r *colly.Response) {
		fmt.Println("Visited", r.Request.URL)

	})

	c.OnHTML(".fbs-table", func(e *colly.HTMLElement) {

		writer.Write([]string{
			e.ChildText("span"),
		})
	})
	log.Print("Scraping Complete, I think\n")
	log.Println(c)
}
