function plotDataPoints(X, idx, K)

% Create the palette
palette = hsv(K + 1);
colors = palette(idx, :);

% Plot data
scatter(X(:,1), X(:,2), 15, colors);

end
