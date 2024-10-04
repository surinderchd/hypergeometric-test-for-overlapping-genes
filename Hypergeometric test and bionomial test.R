# Assume N is the total number of possible genes (this might come from an external dataset or known universe size)
N <- 445  # Example total number of genes in the genome/universe

# Sizes of each set
K <- 314  # Size of list 1
n <- 231   # Size of list 2

# Number of overlapping genes
x <- 156

# Hypergeometric test (probability of seeing this overlap or more by chance)
phyper(156, 314, 445 - 314, 231, lower.tail = FALSE)


# Define parameters for the binomial test
list1 <- 30  # Number of genes regulated exclusively by list1
list2 <- 14   # Number of genes regulated exclusively by list2
total_specific_genes <- list1 + list2  # Total exclusive genes

# Expected proportion (could be 0.5 if expecting equal regulation)
expected_proportion <- 0.5

# Perform exact binomial test
binom_test <- binom.test(list2, list1, p = expected_proportion)

# Print results
cat("Binomial test p-value:", binom_test$p.value, "\n")
