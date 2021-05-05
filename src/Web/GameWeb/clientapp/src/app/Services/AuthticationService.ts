
import RforUCONSTANTS from "../CONSTANTS"
const SessionStorageAvailable = (): boolean => {
    if (!sessionStorage) return false;
    try {
        sessionStorage.setItem(RforUCONSTANTS.SESSIONSTORAGE_ENSURESTORAGE, 'tempValue');
        const sessionVal = sessionStorage.getItem(RforUCONSTANTS.SESSIONSTORAGE_ENSURESTORAGE);
        return sessionVal != null;
    }
    catch (ex) {
        return false;
    }

}

export const IsLoggedIn = (): boolean => {
    if (!SessionStorageAvailable()) return false;

    const sessionVal = sessionStorage.getItem(RforUCONSTANTS.SESSIONSTORAGE_TOKEN);
    return sessionVal != null && sessionVal !== "";
}


export const LogIn = (userName: string , password:string ): boolean => {
    if (!SessionStorageAvailable()) return false;

    try {
        sessionStorage.setItem(RforUCONSTANTS.SESSIONSTORAGE_TOKEN, userName);
        return true

    } catch (ex) {
        return false;
    }
}
export const LoggedOut = (userName: string): boolean => {

    try {
        sessionStorage.removeItem(RforUCONSTANTS.SESSIONSTORAGE_TOKEN);
        return true

    } catch (ex) {
        sessionStorage.setItem(RforUCONSTANTS.SESSIONSTORAGE_TOKEN, "");
        return false;
    }
}

export const GetCurrentUserID = ():string =>{
    if (!SessionStorageAvailable()) return "";
    return sessionStorage.getItem(RforUCONSTANTS.SESSIONSTORAGE_TOKEN) as string;


}




