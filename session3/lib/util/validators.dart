class Validators{
  static String? checkLengthValidator(String? input,int minChar){
    if(input == null){
      return "input not found";
    }
    if(input.length <= minChar){
      return "input too short can't be less than $minChar ";
    }
    return null;
  }
}