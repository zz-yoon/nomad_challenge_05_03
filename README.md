# nomad_challenge_05_03
nomad_challenge_05_03


# 정리를 해보자!! 
- `MediaQuery.of(context).platformBrightness` 로 작업을 하니 중복 코드가 많이 발생 
   -  extension 이나 AppTheme 사용해서 중복 코드를 줄이는 방법을 택함
   - => 그래서 상태관리를 하는 provider, riverpod, sharedPreferences 사용하는게 더 좋은 방법인 것 같다 