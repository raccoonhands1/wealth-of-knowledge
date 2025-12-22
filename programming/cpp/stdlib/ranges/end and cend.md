---
tags:
  - cpp
  - lib
  - cpp20
created:
  "{ ? { date } }":
---
> [!overview]
> similar to [[begin and cbegin]] but used for a different utility

> [!code]
> ``` run-cpp
> #include <ranges>
> #include <vector>
> #include <cstdint>
> 
> uint8_t findFive(vector<int> v) { 
> 	if(ranges::find(v, 5) != ranges::end(v) ) {
> 		cout<<"found five \n"; 
> 	} else {
> 		cout<< "didn't find five \n";
> 	}
> }
> 
> int main() {
> 	vector<int> v{1,2,3,4,5};
> 	findFive(v);
> 
> 	auto vend = ranges::end(v);
> 	*(--vend) = 4;
> 	findFive(v);
> 	
> return 0;
> }
> ```

> [!danger]
> ranges::end(v) returns a pointer to the element AFTER the end element. Thus, *(--vend) accesses the real end element.
