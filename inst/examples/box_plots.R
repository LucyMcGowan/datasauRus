summary(box_plots)

## base plot

#save current settings
state <- par("mar", "mfrow")

par(mfrow = c(5, 2), mar=c(1,2,2,1))

nms <- names(box_plots)

for (i in 1:5){
  nm <- nms[i]
  hist(box_plots[[nms[i]]],
       breaks = 100,
       main = nm)
  boxplot(box_plots[[nms[i]]],
          horizontal = TRUE)
}


#reset settings
par(state)

## ggplot
if(require(ggplot2)){
  ggplot(box_plots, aes(x=left))+
    geom_histogram(bins = 100)
  ggplot(box_plots, aes(x=lines))+
    geom_histogram(bins = 100)
  ggplot(box_plots, aes(x=normal))+
    geom_histogram(bins = 100)
  ggplot(box_plots, aes(x=right))+
    geom_histogram(bins = 100)
  ggplot(box_plots, aes(x=split))+
    geom_histogram(bins = 100)
}
