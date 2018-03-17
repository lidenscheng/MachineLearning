function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%

U_reduced = U(:,1:K); % U is nxk matrix, in this case 2x1 
for i=1:size(X,1)
	Z(i,:) = X(i,:)*U_reduced;  % X is (mxn) matrix, in this case mx2 
								% Z = (mxn)*(nxk)= mxk, in this case mx1 
end 							% z^(i)=x^(i)*U_reduced, in this case (1x2)*(2x1)=1x1 

% =============================================================

end
