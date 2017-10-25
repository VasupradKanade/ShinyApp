##title       : Developing Data Products - Shiny Application and Presentation
##subtitle    : Course 9 - Week 4 - Assignment Presentation
##author      : Vasuprad Kanade
##job         : Coursera Data Science Specialization

pageWithSidebar(
  headerPanel('Iris k-means Clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(iris)),
    selectInput('ycol', 'Y Variable', names(iris),
                selected=names(iris)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)