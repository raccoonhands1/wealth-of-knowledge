---
tags:
  - cpp
  - lib
  - cpp20
created:
  {{date}}:
---
> [!overview]
> return an iterator to the first element (or const qualified argument in cbegin's case)

> [!important]
> using * on an iterator type will return the value that its pointing to. The iterator is just a pointer!

> [!code]
> ``` run-cpp
> #include <ranges> 
> #include <vector>
> 
> int main() {
> 	vector<int> v {1,2,3,4};
> 	auto vi = ranges::begin(v);
> 	cout << *vi << endl; /*valid*/
> 
> 	cout<<"before \n";
> 	for(int& bforeMut : v) {
> 		cout<< bforeMut << '\n';
> 	}
> 
> 	cout<<"after \n";
> 	*vi = 4;
> 	for(int& aftrMut : v) {
> 		cout<< aftrMut << '\n';
> 	}
> 
> 	auto cvi = ranges::cbegin(v);
> 	/* *cvi = 4 is invalid  since const */
> 	
> 	
> 	return 0;
> }
> 
> ```
> 

> [!see]
> [[end and cend]]
