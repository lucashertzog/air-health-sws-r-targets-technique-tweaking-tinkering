library(targets)

sapply(dir("R/", pattern = ".R$", full.names = T), source)

list(
  tar_target(indat1,
             in1(n=2000)
             ),
  tar_target(indat2,
             in2(n=2000)
             ),
  tar_target(out,
             data.frame(x=indat1, y=indat2)
             ),
  tar_target(plt,
             myPlot(out, filename = "figures_and_tables/plt.png")
             ),
  tar_target(plt2,
             myPlot(out*1000, filename = "figures_and_tables/plt2.png")
             )
)
