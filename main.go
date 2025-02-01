package main

import (
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	r.GET("/", func(c *gin.Context) {
		page := `<a href="/hello">/hello</a>`
		c.Data(http.StatusOK, "text/html; charset=utf-8", []byte(page))
	})

	r.GET("/hello", func(c *gin.Context) {
		name := c.DefaultQuery("name", "World")
		page := fmt.Sprintf("Hello %s!", name)
		c.Data(http.StatusOK, "text/html; charset=utf-8", []byte(page))
	})

	r.Run()
}
