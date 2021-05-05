import {IsLoggedIn , LogIn} from "../../Services/AuthticationService"; 

export const  IsUserLoggedIn =  ():boolean =>{
return IsLoggedIn();
}

export const  LoginUser =  (userName:string , password:string):boolean =>{
  if(!IsLoggedIn()){
    return LogIn(userName , password);
  }
  return true;
  
  }

