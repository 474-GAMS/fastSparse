#' @docType package
#' @name FastSparse-package
#' @title A package for L0-regularized learning
#'
#' @description FastSparse fits regularization paths for L0-regularized regression and classification problems. Specifically,
#' it can solve either one of the following problems over a grid of \eqn{\lambda} and \eqn{\gamma} values:
#' \deqn{\min_{\beta_0, \beta} \sum_{i=1}^{n} \ell(y_i, \beta_0+ \langle x_i, \beta \rangle) + \lambda ||\beta||_0 \quad \quad (L0)}
#' \deqn{\min_{\beta_0, \beta} \sum_{i=1}^{n} \ell(y_i, \beta_0+ \langle x_i, \beta \rangle) + \lambda ||\beta||_0 + \gamma||\beta||_1 \quad (L0L1)}
#' \deqn{\min_{\beta_0, \beta} \sum_{i=1}^{n} \ell(y_i, \beta_0+ \langle x_i, \beta \rangle) + \lambda ||\beta||_0 + \gamma||\beta||_2^2  \quad (L0L2)}
#' where \eqn{\ell} is the loss function. We currently support regression using squared error loss and classification using either logistic loss or squared hinge loss.
#' Pathwise optimization can be done using either cyclic coordinate descent (CD) or local combinatorial search. The core of the toolkit is implemented in C++ and employs
#' many computational tricks and heuristics, leading to competitive running times. CD runs very fast and typically
#' leads to relatively good solutions. Local combinatorial search can find higher-quality solutions (at the
#' expense of increased running times).
#' The toolkit has the following six main methods:
#' \itemize{
#' \item{\code{\link{FastSparse.fit}}: }{Fits an L0-regularized model.}
#' \item{\code{\link{FastSparse.cvfit}}: }{Performs k-fold cross-validation.}
#' \item{\code{\link[=print.FastSparse]{print}}: }{Prints a summary of the path.}
#' \item{\code{\link[=coef.FastSparse]{coef}}: }{Extracts solutions(s) from the path.}
#' \item{\code{\link[=predict.FastSparse]{predict}}: }{Predicts response using a solution in the path.}
#' \item{\code{\link[=plot.FastSparse]{plot}}: }{Plots the regularization path or cross-validation error.}
#' }
#' @references Hazimeh and Mazumder. Fast Best Subset Selection: Coordinate Descent and Local Combinatorial
#' Optimization Algorithms. Operations Research (2020). \url{https://pubsonline.informs.org/doi/10.1287/opre.2019.1919}.
NULL
