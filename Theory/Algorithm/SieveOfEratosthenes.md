# Sieve of Eratosthenes (에라토스테네스의 체)

대표적으로 소수 찾기 문제에서 사용되는 알고리즘.



![img](https://blog.kakaocdn.net/dn/bXb6e3/btqETKYqdZ5/CFIQ7uB15911EA28B9LstK/img.gif)

소수: 1과 자기 자신으로만 나누어지는 수 (1은 소수 X)

2부터 n까지 표에 적어넣고 소수가 아닌것을 모두 체크 한다.

2는 소수이다. 그럼 2의 배수를 체크한다.

3은 소수이다. 그럼 3의 배수를 체크한다.

4는 2의 배수에서 체크했으니깐 제외

5는 소수이다. 그럼 5의 배수를 체크한다.

6은 2의 배수에서 체크했으니깐 제외

........

체크가 안된 수들이 소수.



참고 - [위키 백과](https://ko.wikipedia.org/wiki/%EC%97%90%EB%9D%BC%ED%86%A0%EC%8A%A4%ED%85%8C%EB%84%A4%EC%8A%A4%EC%9D%98_%EC%B2%B4), [**소수 구하기 - 에라토스테네스의 체**](https://roeldowney.tistory.com/177)