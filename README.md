# Correlation

[![Build Status](https://travis-ci.org/Artmann/correlations.svg?branch=master)](https://travis-ci.org/Artmann/correlations)

Correlations is a gem that can be used to calculate Pearson Correlation Coefficients for a data set.

## Usage

Install the gem

    $ gem install correlations


Calculate the correlation between values

    $ correlations weather.csv


Correlations works on CSV files with headers.

|Days with Snow|Average Temperature|Average Wind Speed|
|--------------|:-----------------:|:----------------:|
| 43           | 9.4               | 8.8              |
| 25           | 9.5               | 10.5             |
| 28           | 9.6               | 10.6             |
| 41           | 8.8               | 9.8              |
| 74           | 6.6               | 9.2              |

It will calculate the Pearson correlation coefficient between the values in the first column and each of the other columns.

    $ correlations weather.csv

    Calculating correlations for data set weather.csv

    Average Temperature: -0.9499166137289158
    Average Wind Speed: -0.7059250219593274


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/artmann/correlations.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
