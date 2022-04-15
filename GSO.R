ok <- 1 # An indicator of running code without error
# Function to take input two vectors and return their dotproduct
dotpro <- function(x, y) {
    if (length(x) == length(y)) {
        prod <- 0
        for (i in 1:length(x)) {
            prod <- prod + x[i] * y[i]
        }
        return(prod)
    } else {
        print("There is error in calculating dot product")
        ok <- 0
    }
}
# Function to take input a vector and return unit vector in the direction of input vector
unit <- function(t) {
    T <- dotpro(t, t)
    T <- sqrt(T)
    s <- c()
    for (i in 1:length(t)) {
        s[i] <- t[i] / T
    }
    return(s)
}
# Function to take matrix input(whose set of column vectors is input for orthonormalisation process) and print the matrix with orthonormalised vectors as columns
GSO <- function(X, tol) {
    if (missing(tol)) {
        tol <- 0.00000001
    }
    if (is.matrix(X)) {
        m <- dim(X)[1]
        n <- dim(X)[2]
        count <- 0
        u <- X[, 1]
        while ((dotpro(u, u) == 0) && (count < n - 1)) {
            # Loop for ignoring initial zero columns (if any)
            u <- X[, count + 2]
            count <- count + 1
        }
        if (dotpro(u, u) == 0) {
            print("Your input consists only zero entry. So orthonormalisation is not possible")
        } else {
            v <- unit(u)
            if (count < n - 1) {
                sv <- c()
                for (i in (count + 2):n) {
                    u <- X[, i]
                    w <- u
                    lv <- length(v)
                    for (j in 1:(lv / m)) {
                        # Loop for elimination of projection on previous column vectors
                        for (k in 1:m) {
                            sv[k] <- v[(j - 1) * m + k]
                        }
                        usv <- dotpro(u, sv)
                        if (ok == 0) {
                            stop()
                        }
                        for (k in 1:m) {
                            w[k] <- w[k] - usv * sv[k]
                        }
                    }
                    if (dotpro(w, w) <= tol * dotpro(u, u)) {
                        # Ignoring linear dependent column vectors
                        count <- count + 1
                    } else {
                        vnew <- unit(w)
                        for (k in 1:m) {
                            v[lv + k] <- vnew[k]
                        }
                    }
                }
            }
            V <- matrix(v, m, n - count)
            print(V)
            if (count != 0) {
                if (count == 1) {
                    print("*Note*: There was 1 linearly dependent column vector")
                } else {
                    sprintf("*Note*: There were %s linearly dependent column vectors", count)
                }
            }
        }
    } else {
        print("Your input should be a matrix. Please try again...")
    }
}
# Demo
print("***An example of input and output format of GSO function***")
print("Input:")
print("GSO(matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 10), 3, 3), tol <- 10^-8)")
print("Output:")
GSO(matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 10), 3, 3), tol <- 10^-8)