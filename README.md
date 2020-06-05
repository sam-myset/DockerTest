
# ShinyProxy Hello Image

The demo Shiny app displays some a slider and a histogram
inspired by the [example-01-hello](https://shiny.rstudio.com/gallery/example-01-hello.html)
Shiny example.

Pull instructions here ...

To build the image from the Dockerfile, run
```bash
sudo docker build -t analythium/shinyproxy-hello .
```

Test locally
```bash
docker run -p 4000:3838 analythium/shinyproxy-hello
```
then visit `127.0.0.1:4000`.

(c) Copyright Analythium Solutions Inc, 2019-2020 (MIT).
