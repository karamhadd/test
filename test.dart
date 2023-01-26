void main() {
  List<int> nums = [1,-5,4,6,6,-4,2];
  nums = convertToPositive(nums);
  print(nums);
  List<int> sumResult = getSumTwelve(nums);
  if(sumResult.isNotEmpty){
    print("First number is : ${sumResult[0]} and second number is ${sumResult[1]}");
  }else{
    print("Can't find the two numbers");
  }
}

List<int> convertToPositive(List<int> input){
  List<int> output = <int>[];
  input.forEach((item) {
    output.add(item < 0 ?item * -1 : item);
  });
  return output;
}

List<int> getSumTwelve(List<int> input){
  int first = -1;
  int second = -1;
  for(int i = 0; i<input.length; i++){
    if(first == -1){
      for(int j = i + 1;j < input.length; j++){
        if(input[i] + input[j] == 12){
          first = i;
          second = j;
          break;
        }
      }
    }else{
      break;
    }

  }
  if(first != -1 && second != -1){
    return [input[first], input[second]];
  }else{
    return [];
  }
}