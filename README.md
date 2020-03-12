# COVID-19 Daily Dashboard
**Daily aggregation of the progression of COVID-19 cases and hosting visualization in dashboard**

**Language:** R (Rmarkdown, rvest, dplyr, leaflet, ggplot2, gganimate)

### [LIVE DASHBOARD](https://albechen.github.io/covid19-daily-dashboard/covid19-daily-dashboard.nb.html)
 
This dashboard is used to track the current progress of the COVID-19 progress throughout the world. The visualization and information presented are automatically updated daily with current data scraped from the [Johns Hopkin’s COVID-19 Data Repository](https://github.com/CSSEGISandData/COVID-19). Their data is retrieved for sources such as World Health Organization (WHO), China CDC, US CDC, and more.

The data is cleaned and aggregated through R, formatted in Rmarkdown, and exported as an HTML document to be hosted through GitPages. The source R notebook can be found at [covid19-daily-dashboard.Rmd](https://github.com/albechen/covid19-daily-dashboard/blob/master/covid19-daily-dashboard.Rmd) in the [GitHub repository](https://github.com/albechen/covid19-daily-dashboard).

#### Timelapase of COVID-19 Cases:
![](covid19_timelapse.gif)
