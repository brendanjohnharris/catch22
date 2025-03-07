# _catch22_ - CAnonical Time-series CHaracteristics

[![DOI](https://zenodo.org/badge/146194807.svg)](https://zenodo.org/badge/latestdoi/146194807)

## About

_catch22_ is a collection of 22 time-series features coded in C that can be run from Python, R, Matlab, and Julia.
The _catch22_ features are a high-performing subset of the over 7000 features in [_hctsa_](https://github.com/benfulcher/hctsa).

Features were selected based on their classification performance across a collection of 93 real-world time-series classification problems, as described in our open-access paper:
- [&#x1F4D7; Lubba et al. (2019). _catch22_: CAnonical Time-series CHaracteristics](https://doi.org/10.1007/s10618-019-00647-x).

_But what do the features do?_
You can learn more about what each feature does, with visualizations of how the features behave on real data, [here](https://feature-based-time-series-analys.gitbook.io/catch22-features/).

The computational pipeline used to generate the _catch22_ feature set is in the [`op_importance`](https://github.com/chlubba/op_importance) repository.

For _catch22_-related information and resources, including a list of publications using _catch22_, see the [___catch22_ wiki__](https://github.com/chlubba/catch22/wiki).

Summary of the performance of the _catch22_ feature set across 93 classification problems, and a comparison to the [_hctsa_ feature set](https://github.com/benfulcher/hctsa) (cf. Fig. 4 from [our paper](https://doi.org/10.1007/s10618-019-00647-x)):

![](img/PerformanceComparisonFig4.png)

## Installation: Python, R, Matlab, Julia, and compiled C

The fast, C-coded functions in this repository can be used in Python, Matlab, and R following the [detailed installation instructions on the wiki](https://github.com/chlubba/catch22/wiki/Installation-and-Testing).

There is also a native R version, downloadable from CRAN, [Rcatch22](https://github.com/hendersontrent/Rcatch22).

And Julia users can use [this Julia package](https://github.com/brendanjohnharris/Catch22.jl) to evaluate the _catch22_ feature set.

## Usage

- See language-specific usage information in the [wiki](https://github.com/chlubba/catch22/wiki/Installation-and-Testing).
- When presenting results using _catch22_, you must identify the version used to allow clear reproduction of your results. For example, `CO_f1ecac` was altered from an integer-valued output to a linearly interpolated real-valued output from v0.3.
- __Important Note:__ _catch22_ features only evaluate _dynamical_ properties of time series and do not respond to basic differences in the location (e.g., mean) or spread (e.g., variance).
  - From _catch22_ v0.3, If the location and spread of the raw time-series distribution may be important for your application, we suggest applying the function argument `catch24 = true` (`TRUE` in R, `True` in Python) to your call to the _catch22_ function in the language of your choice. This will result in 24 features being calculated: the _catch22_ features in addition to mean and standard deviation.
- Note that time series are _z_-scored internally which means e.g., constant time series will lead to `NaN` outputs.
