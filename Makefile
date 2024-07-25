dependency:
	cd build && cmake .. --graphviz=graph.dot && dot -Tpng graph.dot -o deps.png 