shrubs_table <- read.csv("shrub-volume-experiments-table.csv")
joining_shrubs_with_table <- inner_join(shrubs, shrubs_table, by = "experiment")
print(joining_shrubs_with_table)