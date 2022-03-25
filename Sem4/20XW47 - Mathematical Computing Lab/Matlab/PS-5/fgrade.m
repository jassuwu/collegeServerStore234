function [g] = fgrade(R)
    [r, c] = size(R);
    g = zeros(r,1);
    for x=1:r
        scores = R(x,:);
        hwGrade = (sum(scores(1:6)) - min(scores(1:6)))/5;
        mtAvgGrade = mean(scores(7:9));
        courseGrade = hwGrade*1.5;
        if mtAvgGrade < scores(10)
            courseGrade = courseGrade + sum(scores(7:9)*0.15) + scores(10)*0.4;
        else
            courseGrade = courseGrade + mtAvgGrade*(0.85);
        end
        g(x) = courseGrade;
    end
end

