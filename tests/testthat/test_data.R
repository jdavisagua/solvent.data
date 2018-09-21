library(solvent.data)

# Helpers
nms <- function(df) paste(names(df), collapse = " ")
s <- solvents

context("Raw data export")
test_that("Data namespace is correct", {
            expect_equal(nms(s), "cid name bp solubility density")
})

test_that("Data is sorted by ascending CID", {
            expect_equal(s[1, "cid"], min(s$cid))
})

test_that("Solvent names match correct CIDs", {
            expect_equal(s[s$cid == 180, "name"], "acetone")
            expect_equal(s[s$cid == 6344, "name"], "dichloromethane")
            expect_equal(s[s$cid == 887, "name"], "methanol")
})
