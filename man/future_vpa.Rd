% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/future.r
\encoding{UTF-8}
\name{future_vpa}
\alias{future_vpa}
\title{将来予測の実施関数}
\usage{
future_vpa(
  tmb_data,
  optim_method = "none",
  multi_init = 1,
  multi_lower = 1e-04,
  multi_upper = 10,
  objective = "MSY",
  obj_value = 0,
  obj_stat = "mean",
  max_F = exp(10),
  max_exploitation_rate = 0.99,
  do_MSE = NULL,
  MSE_input_data = NULL,
  MSE_nsim = NULL,
  compile = FALSE,
  output_format = "new",
  attach_input = TRUE,
  SPRtarget = NULL,
  calc_SPR_year_name = NULL
)
}
\arguments{
\item{tmb_data}{make_future_dataの返り値。将来の生物パラメータや再生産関係のシナリオを年齢×年×シミュレーション回数で指定した様々なarrayが含まれる。}

\item{max_F}{漁獲量一定方策を実施する際のF at ageの最大値の上限（将来的にはmake_future_data関数に入れたい)}

\item{max_exploitation_rate}{漁獲量一定方策を実施する際のMを考慮した上での漁獲率の上限（将来的にはmake_future_data関数に入れたい)}

\item{SPR_target}{目標とする\%SPR。NULL以外の値の場合、過去〜将来のそれぞれの年・シミュレーションが、目標とするF\%SPRに対して何倍にあたるか(F/Ftarget)を計算して、HCR_realizedの"Fratio"に入れる。HCRが生きている年については"beta_gamma"と一致するはず。}
}
\description{
将来予測の実施関数
}
