i = imshow('peppers.png');

m = impixel


%%a = [1 1 2;1 3 4;1 5 8; 2 10 2; 2 9 3; 2 7 6]; %matrices con clases

%%vector = [6 2];

%%clase = max_proba(a, 2, 3, vector)

% 
% 
% d = 2;
% k = 6;
% c = [];
% 
% for class = 1:d %%numero de clases
%     for index = 1:k %%numero de clases*representantes
%         if b(1, index, 1) == class;
%         c = [c; b(2, index, 1) b(3, index, 1)];
%         end
%     end
%     
%     p = mean(c);
%     c(:,1) = c(:,1)-p(1,1);
%     c(:,2) = c(:,2)-p(1,2);
%     
%     c = 1/3*c'*c;
%     
%     s = vector - p;
%     
%     mahalanobis = s*inv(c)*s'
%     
%     c = [];
% end
% 
