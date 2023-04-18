library(testthat)
convert_temp<-function(temperature,method="f2c"){
  if (method=="f2c"){
    (temperature-32)*5/9
  }
  
  else if (method=="c2f"){
    (temperature*9/5)+32
  }
  
  else{
    stop("invalid method")
  }
}

test_that("f2c works in default", {
  expect_equal(convert_temp(50),(50-32)*5/9)
})

test_that("f2c works", {
  expect_equal(convert_temp(50,"f2c"),(50-32)*5/9)
})

test_that("c2f works", {
  expect_equal(convert_temp(50,"c2f"),(50*9/5)+32)
})

test_that("other method should not work", {
  expect_error(convert_temp(50,"cel2f"),"invalid method")
})