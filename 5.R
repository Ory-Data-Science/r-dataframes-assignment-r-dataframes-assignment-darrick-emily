# The first code, by_site_avgvol calculates the average volume based on the site.
# The second code, by_experiment_avgvol calculates the average volume based on the experiment.
shrub_data <- read.csv("shrub-volume-experiment.csv")
by_site_avgvol <- shrub_data %>%
  mutate("volume" = length * width * height) %>%
  group_by(site) %>%
  summarize(mean_volume = mean(volume))
print(by_site_avgvol)
by_experiment_avgvol <- shrub_data %>%
  mutate("volume" = length * width * height) %>%
  group_by(experiment) %>%
  summarize(mean_volume = mean(volume))
print(by_experiment_avgvol)