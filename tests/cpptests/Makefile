


.PHONY: exp1 exp2 exp4

jumptable: jumptable.cpp
	g++ -mavx512f -std=c++11 -O3 -o build/jumptable jumptable.cpp

clean:
	rm build/*

docker-image:
	docker build -t thesis_dev_env .

