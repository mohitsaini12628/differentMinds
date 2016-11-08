function [random_number] = random_number (min_value,max_value)

	random_number = min_value + (max_value - min_value)*rand(1);


end
