# 합성수 찾기
## 약수의 개수가 세 개 이상인 수를 합성수라고 합니다.
## 자연수 n이 매개변수로 주어질 때 
## n이하의 합성수의 개수를 return하도록 solution 함수를 완성해주세요.

## 이 로직이 파이썬에선 되는데 Swift에선 안된다. 어째서?
### n이 4보다 작을 경우,
### for문 범위 (4, n + 1)에서 형식이 잘못돼서 작동하지 않는다.
### 하지만 착한 파이썬은 오류? 그냥 씹어먹는다.

def solution(n):
    # n이하의 합성수 개수
    count = 0
    
    # 3 이하는 합성수가 없기 때문에 4부터 탐색 시작.
    for number in range(4, n + 1):
        # 약수를 담아줄 tempArray
        tempArray = []
        
        # 1부터 number까지 탐색하여
        # number의 약수를 tempArray에 담아준다.
        for i in range(1, number + 1):
            if number % i == 0:
                tempArray.append(i)
        
        # 약수의 개수가 3개 이상이면 합성수이므로
        # count를 1 늘려준다.    
        if len(tempArray) > 2:
            count += 1
    
    return count