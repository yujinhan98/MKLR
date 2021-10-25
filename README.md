# MKLR

Multi-class kernel logistic regression. This function fit a Multi-class Kernel Logistic Regression model to the data. The return list contains the estimated kernel weights as well as the original data to perform predictions.There are two types of kernel, they are `RBF` and `polynomial`.

## Installation

You can install the released version of bubblematrix from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
library(devtools)
devtools::install_github("hyj12345/MKLR")
```

## Example

I give the example for my course homework. 

### View the built-in dataset

```r
library(readr)
library(magrittr)
train_data <- read_csv("~/Desktop/21Fall/BIS555/vowel/training")%>%.[2:12]
test_data <- read_csv("~/Desktop/21Fall/BIS555/vowel/test")%>%.[2:12]
```

* Train

```r
library(MKLR)
##Train the model
model_mklr<-MKLR(train_data$y,train_data[,-1],max_iter=1000,threshold=1.0e-5,lr=0.5,kernel = 'RBF')
```

* Predict

```r
library(MKLR)
##Train the model
model_mklr<-MKLR(train_data$y,train_data[,-1],max_iter=1000,threshold=1.0e-5,lr=0.5,kernel = 'RBF')
```

And we can get the information:
