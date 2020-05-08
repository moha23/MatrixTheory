import numpy as np

def mult_func(A,B):
	[row_A, col_A] = np.shape(A)
	[row_B, col_B] = np.shape(B)
	if col_A != row_B:
		print('Dimensions not correct for multiplication')
		return(0)
	else:
		C = np.zeros([row_A, col_B])
		for i in range(row_A):
			for j in range(col_B):
				C[i,j] = np.dot(A[i,:],B[:,j])
		return(C)


def main():
	A = np.matrix([[1, 0, 0],[-3, 1, 0],[0, 0, 1]])
	B = np.matrix([[1, 2, 1],[3, 8, 1],[0, 4, 1]])
	C = mult_func(A,B)
	print("Multiplied by operator *: \n",(A * B))
	print("Multiplied by our function:")
	print(C)

if __name__ == "__main__":
    main()
