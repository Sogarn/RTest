# Test histograms
set.seed(1)
left_data <- rnorm(4000, 120, 30)
left_rgb <- rgb(1,0,0,0.5)
right_data <- rnorm(4000, 200, 30)
right_rgb <- rgb(0,0,1,0.5)

# Set up left histo
hist(left_data, breaks=30, xlim=c(0,300), col=left_rgb, xlab="height", 
     ylab="dunno tbh", main="two pretty graphs :)")

# Set up right histo and add to existing plot
hist(right_data, breaks=30, xlim=c(0,300), col=right_rgb, add=T)

# Legend
legend("topright", legend=c("Left", "Right", col=c(left_rgb,right_rgb),
                            pt.cex=2, pch=15)