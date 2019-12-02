A Docker Image to run Reveal Slideshow
===========================================

## Write your slideshow

Change index.html
... or change slides.md

## Build the image

```bash
docker build . -t my-slideshow
```

##	Run the image

```bash
docker run -d -p 8080:80 --name my-slideshow-container my-slideshow
```

## Open your Slideshow in your browser

```bash
start chrome http://localhost:8080
```
