Instruction for CVX

This folder contains the code and data used to solve optimization problems by CVX. Readers need download and install CVX package (http://cvxr.com/cvx/).

We include in the folder 3 datasets news20scale2, rcv1, rcv1mc, qcqp1, qcqp2. 
Since news20binary and news20bianry_bp are too large to upload, readers need download and install LIBSVM package (https://www.csie.ntu.edu.tw/~cjlin/libsvm/#download). Unzip matrix_news20binary.zip and matrix_news20binary_bp.zip, then run import_data.m.
Since qcqp3 and qcqp4 in our experiments are too large to upload, readers can similarly generate the datasets by qcqp_generate.m. For qcqp3, n= 1000, m= 100, and for qcqp4, n= 1000, m= 500. This code also requires LIBSVM package to store the datasets in libsvm format. Detailed instruction is:
>> matlab
>> addpath PUT_PATH_TO_ROOT_WHERE_LIBSVM_PACKAGE_FILE_IS
>> run qcqp_generate.m
>> cp matrix_qcqp3 ../datas/matrix_qcqp3
(for qcqp4, >> cp matrix_qcqp4 ../datas/matrix_qcqp4)
For qcqp3, this should take roughly 7200 seconds; for qcqp4, this should take roughly 14400 seconds

To solve basis pursuit problem, 
Run test2.m
For different dataset, just change the dataset name to define A and b in test2.m

To solve least absolute deviation problem, 
Run test3.m
For different dataset, just change the dataset name to define A and b in test3.m

To solve fused lasso problem, 
Run test4.m
For different dataset, just change the dataset name to define A, b and M in test4.m

To solve quadratically constrained quadratic program,
Run qcqp.m
For different dataset, just change the dataset name to define A, and b in qcqp.m. Notice that for qcqp4, qcqp4_A= [qcqp4_A1; ... ; qcqp_A5].
