# <ins>Gram-Schmidt-Orthonormalization-GSO</ins>

## What is GSO?
In mathematics, particularly [linear algebra](https://en.wikipedia.org/wiki/Linear_algebra) and [numerical analysis](https://en.wikipedia.org/wiki/Numerical_analysis), the Gram–Schmidt process is a method for [orthonormalizing](https://en.wikipedia.org/wiki/Orthonormal_basis) a set of [vectors](https://en.wikipedia.org/wiki/Vector_(geometry)) in an [inner product space](https://en.wikipedia.org/wiki/Inner_product_space), most commonly the [Euclidean space](https://en.wikipedia.org/wiki/Euclidean_space) R<sup>n</sup> equipped with the [standard inner product](https://en.wikipedia.org/wiki/Standard_inner_product). The Gram–Schmidt process takes a finite, [linearly independent](https://en.wikipedia.org/wiki/Linearly_independent) set of vectors S = {v1, ..., vk} for k ≤ n and generates an [orthogonal set](https://en.wikipedia.org/wiki/Orthogonal_set) S′ = {u1, ..., uk} that spans the same k-dimensional subspace of R<sup>n</sup> as S.

The method is named after [Jørgen Pedersen Gram](https://en.wikipedia.org/wiki/J%C3%B8rgen_Pedersen_Gram) and [Erhard Schmidt](https://en.wikipedia.org/wiki/Erhard_Schmidt), but [Pierre-Simon Laplace](https://en.wikipedia.org/wiki/Pierre-Simon_Laplace) had been familiar with it before Gram and Schmidt.

The application of the Gram–Schmidt process to the column vectors of a full column rank matrix yields the [QR decomposition](https://en.wikipedia.org/wiki/QR_decomposition) (it is decomposed into an [orthogonal](https://en.wikipedia.org/wiki/Orthogonal_matrix) and a [triangular](https://en.wikipedia.org/wiki/Triangular_matrix) matrix).

## Code 
Here the provided code [GSO.R](https://github.com/AvijitSaha16/Gram-Schmidt-Orthonormalization-GSO/blob/master/GSO.R) gives a function called GSO() which takes 2 arguements, one matrix and one optional arguement tolerence, and returns an [orthogonal matrix](https://en.wikipedia.org/wiki/Orthogonal_matrix) whose column vectors form an [orthonormal basis (ONB)](https://en.wikipedia.org/wiki/Orthonormal_basis) of [column space](https://en.wikipedia.org/wiki/Row_and_column_spaces#Column_space) of input matrix.

The tolerance is a level (with default value 10<sup>-8</sup>) depending on which the code decides whether a vector is null vector or not.

## Visualisation
This GSO process works on R<sup>n</sup> for any finite natural number n but visualisation of this process can be done only till R<sup>3</sup>(i.e. 3D). So [here](https://github.com/AvijitSaha16/Gram-Schmidt-Orthonormalization-GSO/blob/master/Visualisation%20in%203D/Gram-Schmidt_process.gif) is a visualisation for n=3.
