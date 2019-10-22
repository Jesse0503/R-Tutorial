coin_flipping = function(sampling, flipping, sample_means)
{
  coin_flipping_mean = c()
  for (i in 1:sample_means) {
    sampling = rbinom(sampling, flipping, 0.5)
    coin_flipping_mean[i] = mean(sampling)
  }
  hist(coin_flipping_mean)
}