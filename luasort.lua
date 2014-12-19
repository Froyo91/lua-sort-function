--升序排序 /quicksort  asc
--target: 目标table/target table such as {9, -1, 4, 5, 18, 1, 8, 0, 20, 31}
--low：起始下标/start position
--high：终止下标/end position
function quick_sort_ASC(target, low, high)
	local t = low
	local r = high
	local temp = target[t]

	if low < high then
		while(t < r) do
			while(target[r] >= temp and t < r) do
				r = r - 1
			end
			target[t] = target[r]
			while(target[t] <= temp and t < r) do
				t = t + 1
			end
			target[r] = target[t]
		end
		target[t] = temp
		quick_sort_ASC(target, low, t-1)
		quick_sort_ASC(target, r+1, high)
	end
end

--降序排序 /quicksort  desc
--target: 目标table/target table such as {9, -1, 4, 5, 18, 1, 8, 0, 20, 31}
--low：起始下标/start position
--high：终止下标/end position
function quick_sort_DESC(target, low, high)
	local t = low
	local r = high
	local temp = target[t]

	if low < high then
		while(t < r) do
			while(target[r] <= temp and t < r) do
				r = r - 1
			end
			target[t] = target[r]
			while(target[t] >= temp and t < r) do
				t = t + 1
			end
			target[r] = target[t]
		end
		target[t] = temp
		quick_sort_DESC(target, low, t-1)
		quick_sort_DESC(target, r+1, high)
	end
end