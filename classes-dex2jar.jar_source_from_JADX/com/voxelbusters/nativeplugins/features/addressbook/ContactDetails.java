package com.voxelbusters.nativeplugins.features.addressbook;

import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.AddressBook;
import java.util.ArrayList;
import java.util.HashMap;
import spacemadness.com.lunarconsole.BuildConfig;

public class ContactDetails {
    String displayName;
    ArrayList<String> emailList;
    String familyName;
    String givenName;
    ArrayList<String> phoneList;
    String profilePicturePath;

    public ContactDetails() {
        this.displayName = BuildConfig.FLAVOR;
        this.familyName = BuildConfig.FLAVOR;
        this.givenName = BuildConfig.FLAVOR;
        this.phoneList = new ArrayList();
        this.profilePicturePath = BuildConfig.FLAVOR;
        this.emailList = new ArrayList();
    }

    public void addEmail(String str, int i) {
        this.emailList.add(str);
    }

    public void addPhoneNumber(String str, int i) {
        this.phoneList.add(str);
    }

    HashMap<String, Object> getHash() {
        HashMap<String, Object> hashMap = new HashMap();
        hashMap.put(AddressBook.DISPLAY_NAME, this.displayName);
        hashMap.put(AddressBook.FAMILY_NAME, this.familyName);
        hashMap.put(AddressBook.GIVEN_NAME, this.givenName);
        hashMap.put(Keys.IMAGE_PATH, this.profilePicturePath);
        hashMap.put(AddressBook.PHONE_NUM_LIST, this.phoneList);
        hashMap.put(AddressBook.EMAIL_ID_LIST, this.emailList);
        return hashMap;
    }

    public void setNames(String str, String str2, String str3) {
        this.displayName = str;
        this.familyName = str2;
        this.givenName = str3;
    }

    public void setPicturePath(String str) {
        this.profilePicturePath = str;
    }
}
