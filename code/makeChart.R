## @knitr makeCharts

# Create a plot of weather checking preferences for our chosen region
# and broken out by gender.

# Layer in some other style things: labels, fill pref., etc.

library(stringr)

ggplot(sdat, 
       aes(x = weather_source, 
           fill = female)) + 
  geom_bar(position="dodge",
           colour="black") +
  scale_x_discrete(labels = function(x) str_wrap(x, width = 20)) +
  ggtitle(paste0("Weather Source by Gender: ",
                 params$region," Region")) +
  xlab("Weather Source Preference") +
  ylab("Number of Respondents") +
  scale_fill_manual(values=c("skyblue","palevioletred"),
                    name="Gender",
                    breaks=c(FALSE,TRUE),
                    labels=c("Male", "Female")) +
  coord_flip() +
  theme_fivethirtyeight()