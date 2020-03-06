

class UserErrors implements Exception {
 @override
 String toString() {
   return  "Credentiels not found";
     
  }

}
class UserNotFound implements Exception {
 @override
 String toString() {
   return  "User not found";
     
  }



}
class NoInternet implements Exception {
 @override
 String toString() {
   return  "User not found";
     
  }
}
