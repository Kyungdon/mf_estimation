function [ rotError, origin_rotError ] = Fn_CalculateError( GT_R, R )
    origin_GT_R = GT_R';
    tGT_R = GT_R';
    [U, ~, V] = svd(tGT_R);
    tGT_R = U*V';
    tGT_R = det(tGT_R).*tGT_R;

    rotError = (acosd(max(abs(tGT_R'*R),[],2)));
    origin_rotError = (acosd(max(abs(origin_GT_R'*R),[],2)));
end

