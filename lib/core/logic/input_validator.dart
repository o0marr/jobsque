class InputValidator{
  static String? phone(value) {
  if(value!.isEmpty){
  return"يجب اخال رقم الجوال";
  }else if(value.length<11){
    return"يجب ان يكون رقم الجوال  أحد عشر على الاقل";
  }
  else{
  return null;
  }
  }


 static String? password(value) {
  if(value!.isEmpty){
  return"Password must be Entered";
  }else if(value.length<7){
  return"Password must be at least 8 characters";

  }
  else{
  return null;
  }
  }
  static String? confirmpassword(value) {
    if(value.length<7){
      return"Password must be at least 8 characters";
    }else if(value.isNotmatch){
      return"Both password must match";

    }
    else{
      return null;
    }
  }



}