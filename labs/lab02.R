# Our second R script

# Lines starting with a # are comments. You can write anything you like there and
# it will be ignored when 'run' in R/RStudio. These are useful for adding notes
# to yourself for later.

# This first command loads up the `tidyverse` library/package which includes
# `ggplot2` for creating pretty charts.
library(tidyverse)

# Now we'll load some data on earthquakes from around Fiji
data(quakes)

# Let's plot the earthquake magnitude versus the number
# of stations that detect them
ggplot(data=quakes) +
  aes(x=mag, y=stations) +
  geom_point()

# You can add more code or comments below here.
