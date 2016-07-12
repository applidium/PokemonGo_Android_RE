package com.voxelbusters.nativeplugins.features.addressbook;

import android.annotation.SuppressLint;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.RemoteException;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.Contacts;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.RawContacts;
import com.voxelbusters.nativeplugins.NativePluginHelper;
import com.voxelbusters.nativeplugins.defines.CommonDefines;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.AddressBook;
import com.voxelbusters.nativeplugins.defines.Keys.Permission;
import com.voxelbusters.nativeplugins.defines.UnityDefines;
import com.voxelbusters.nativeplugins.utilities.ApplicationUtility;
import com.voxelbusters.nativeplugins.utilities.Debug;
import com.voxelbusters.nativeplugins.utilities.FileUtility;
import com.voxelbusters.nativeplugins.utilities.JSONUtility;
import com.voxelbusters.nativeplugins.utilities.StringUtility;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AddressBookHandler {
    static final Uri CONTACT_CONTENT_URI;
    static final String CONTACT_IN_VISIBLE_GROUP = "in_visible_group";
    static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/name";
    @SuppressLint({"InlinedApi"})
    static final String DISPLAY_NAME;
    static final String EMAIL_CONTACT_ID = "contact_id";
    static final Uri EMAIL_CONTENT_URI;
    static final String EMAIL_DATA = "data1";
    static final String EMAIL_TYPE = "data2";
    static final String FAMILY_NAME = "data3";
    static final String GIVEN_NAME = "data2";
    static final String HAS_PHONE_NUMBER = "has_phone_number";
    private static AddressBookHandler INSTANCE = null;
    static final String PHONE_CONTACT_ID = "contact_id";
    static final Uri PHONE_CONTENT_URI;
    static final String PHONE_DISPLAY_NAME = "display_name";
    static final String PHONE_NUMBER = "data1";
    static final String PHONE_TYPE = "data2";
    static final String PHOTO_CONTENT_DIRECTORY = "photo";
    static final String PHOTO_URI;
    static final String ROOT_CONTACT_ID = "_id";

    /* renamed from: com.voxelbusters.nativeplugins.features.addressbook.AddressBookHandler.1 */
    class C09911 implements Runnable {
        C09911() {
        }

        public void run() {
            AddressBookHandler.this.readContactsInBackground();
        }
    }

    /* renamed from: com.voxelbusters.nativeplugins.features.addressbook.AddressBookHandler.2 */
    class C09922 implements Runnable {
        private final /* synthetic */ JSONObject val$json;

        C09922(JSONObject jSONObject) {
            this.val$json = jSONObject;
        }

        public void run() {
            AddressBookHandler.this.addContactInternal(this.val$json);
        }
    }

    static {
        CONTACT_CONTENT_URI = Contacts.CONTENT_URI;
        if (VERSION.SDK_INT >= 11) {
            DISPLAY_NAME = PHONE_DISPLAY_NAME;
            PHONE_CONTENT_URI = Phone.CONTENT_URI;
        } else {
            DISPLAY_NAME = PHONE_DISPLAY_NAME;
            PHONE_CONTENT_URI = Phone.CONTENT_URI;
        }
        PHOTO_URI = VERSION.SDK_INT >= 11 ? "photo_uri" : "photo_id";
        EMAIL_CONTENT_URI = Email.CONTENT_URI;
    }

    private AddressBookHandler() {
    }

    private void addContactInternal(JSONObject jSONObject) {
        Object toByteArray;
        JSONArray optJSONArray;
        JSONArray optJSONArray2;
        ContentResolver contentResolver;
        ArrayList arrayList;
        int size;
        Builder newInsert;
        Builder newInsert2;
        int i;
        ContentProviderResult[] applyBatch;
        int i2 = 0;
        Object obj = null;
        String optString = jSONObject.optString(AddressBook.FAMILY_NAME);
        String optString2 = jSONObject.optString(AddressBook.GIVEN_NAME);
        String optString3 = jSONObject.optString(Keys.IMAGE_PATH, obj);
        if (!StringUtility.isNullOrEmpty(optString3)) {
            ByteArrayOutputStream bitmapStream = FileUtility.getBitmapStream(optString3);
            if (bitmapStream != null) {
                toByteArray = bitmapStream.toByteArray();
                optJSONArray = jSONObject.optJSONArray(AddressBook.EMAIL_ID_LIST);
                optJSONArray2 = jSONObject.optJSONArray(AddressBook.PHONE_NUM_LIST);
                contentResolver = NativePluginHelper.getCurrentContext().getContentResolver();
                arrayList = new ArrayList();
                size = arrayList.size();
                Debug.error("Test", "count : " + size);
                newInsert = ContentProviderOperation.newInsert(RawContacts.CONTENT_URI);
                newInsert.withValue("account_type", obj);
                newInsert.withValue("account_name", obj);
                arrayList.add(newInsert.build());
                newInsert = ContentProviderOperation.newInsert(Data.CONTENT_URI);
                newInsert.withValueBackReference("raw_contact_id", size);
                newInsert.withValue(FAMILY_NAME, optString);
                newInsert.withValue(PHONE_TYPE, optString2);
                newInsert.withValue("mimetype", CONTENT_ITEM_TYPE);
                arrayList.add(newInsert.build());
                if (toByteArray != null) {
                    newInsert2 = ContentProviderOperation.newInsert(Data.CONTENT_URI);
                    newInsert2.withValueBackReference("raw_contact_id", size);
                    newInsert2.withValue("data15", toByteArray);
                    newInsert2.withValue("mimetype", "vnd.android.cursor.item/photo");
                    arrayList.add(newInsert2.build());
                }
                if (optJSONArray != null) {
                    for (i = 0; i < optJSONArray.length(); i++) {
                        try {
                            optString3 = (String) optJSONArray.get(i);
                        } catch (JSONException e) {
                            e.printStackTrace();
                            optString3 = obj;
                        }
                        if (!StringUtility.isNullOrEmpty(optString3)) {
                            Builder newInsert3 = ContentProviderOperation.newInsert(Data.CONTENT_URI);
                            newInsert3.withValueBackReference("raw_contact_id", size);
                            newInsert3.withValue(PHONE_NUMBER, optString3);
                            newInsert3.withValue(PHONE_TYPE, Integer.valueOf(3));
                            newInsert3.withValue("mimetype", "vnd.android.cursor.item/email_v2");
                            arrayList.add(newInsert3.build());
                        }
                    }
                }
                if (optJSONArray2 != null) {
                    while (i2 < optJSONArray2.length()) {
                        try {
                            optString3 = (String) optJSONArray2.get(i2);
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                            optString3 = obj;
                        }
                        if (!StringUtility.isNullOrEmpty(optString3)) {
                            newInsert2 = ContentProviderOperation.newInsert(Data.CONTENT_URI);
                            newInsert2.withValueBackReference("raw_contact_id", size);
                            newInsert2.withValue(PHONE_NUMBER, optString3);
                            newInsert2.withValue(PHONE_TYPE, Integer.valueOf(7));
                            newInsert2.withValue("mimetype", "vnd.android.cursor.item/phone_v2");
                            arrayList.add(newInsert2.build());
                        }
                        i2++;
                    }
                }
                applyBatch = contentResolver.applyBatch("com.android.contacts", arrayList);
                NativePluginHelper.sendMessage(UnityDefines.AddressBook.ADD_CONTACTS_FINISHED, applyBatch != null ? "false" : "true");
            }
        }
        toByteArray = obj;
        optJSONArray = jSONObject.optJSONArray(AddressBook.EMAIL_ID_LIST);
        optJSONArray2 = jSONObject.optJSONArray(AddressBook.PHONE_NUM_LIST);
        contentResolver = NativePluginHelper.getCurrentContext().getContentResolver();
        arrayList = new ArrayList();
        size = arrayList.size();
        Debug.error("Test", "count : " + size);
        newInsert = ContentProviderOperation.newInsert(RawContacts.CONTENT_URI);
        newInsert.withValue("account_type", obj);
        newInsert.withValue("account_name", obj);
        arrayList.add(newInsert.build());
        newInsert = ContentProviderOperation.newInsert(Data.CONTENT_URI);
        newInsert.withValueBackReference("raw_contact_id", size);
        newInsert.withValue(FAMILY_NAME, optString);
        newInsert.withValue(PHONE_TYPE, optString2);
        newInsert.withValue("mimetype", CONTENT_ITEM_TYPE);
        arrayList.add(newInsert.build());
        if (toByteArray != null) {
            newInsert2 = ContentProviderOperation.newInsert(Data.CONTENT_URI);
            newInsert2.withValueBackReference("raw_contact_id", size);
            newInsert2.withValue("data15", toByteArray);
            newInsert2.withValue("mimetype", "vnd.android.cursor.item/photo");
            arrayList.add(newInsert2.build());
        }
        if (optJSONArray != null) {
            for (i = 0; i < optJSONArray.length(); i++) {
                optString3 = (String) optJSONArray.get(i);
                if (!StringUtility.isNullOrEmpty(optString3)) {
                    Builder newInsert32 = ContentProviderOperation.newInsert(Data.CONTENT_URI);
                    newInsert32.withValueBackReference("raw_contact_id", size);
                    newInsert32.withValue(PHONE_NUMBER, optString3);
                    newInsert32.withValue(PHONE_TYPE, Integer.valueOf(3));
                    newInsert32.withValue("mimetype", "vnd.android.cursor.item/email_v2");
                    arrayList.add(newInsert32.build());
                }
            }
        }
        if (optJSONArray2 != null) {
            while (i2 < optJSONArray2.length()) {
                optString3 = (String) optJSONArray2.get(i2);
                if (!StringUtility.isNullOrEmpty(optString3)) {
                    newInsert2 = ContentProviderOperation.newInsert(Data.CONTENT_URI);
                    newInsert2.withValueBackReference("raw_contact_id", size);
                    newInsert2.withValue(PHONE_NUMBER, optString3);
                    newInsert2.withValue(PHONE_TYPE, Integer.valueOf(7));
                    newInsert2.withValue("mimetype", "vnd.android.cursor.item/phone_v2");
                    arrayList.add(newInsert2.build());
                }
                i2++;
            }
        }
        try {
            applyBatch = contentResolver.applyBatch("com.android.contacts", arrayList);
        } catch (RemoteException e3) {
            e3.printStackTrace();
        } catch (OperationApplicationException e4) {
            e4.printStackTrace();
        }
        if (applyBatch != null) {
        }
        NativePluginHelper.sendMessage(UnityDefines.AddressBook.ADD_CONTACTS_FINISHED, applyBatch != null ? "false" : "true");
    }

    public static AddressBookHandler getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new AddressBookHandler();
        }
        return INSTANCE;
    }

    private void readContactsInBackground() {
        Cursor query;
        Exception e;
        Throwable th;
        Object obj;
        Object obj2;
        HashMap hashMap;
        Cursor cursor = null;
        Cursor query2;
        try {
            Context currentContext = NativePluginHelper.getCurrentContext();
            ContentResolver contentResolver = currentContext.getContentResolver();
            query = contentResolver.query(CONTACT_CONTENT_URI, null, "in_visible_group = '1'", null, DISPLAY_NAME + " ASC");
            try {
                boolean moveToFirst = query.moveToFirst();
                ArrayList arrayList = new ArrayList();
                if (moveToFirst) {
                    do {
                        try {
                            String savedLocalFileFromUri;
                            ContactDetails contactDetails = new ContactDetails();
                            String cursorString = getCursorString(query, ROOT_CONTACT_ID);
                            query2 = contentResolver.query(Data.CONTENT_URI, null, "mimetype = ? AND contact_id = ?", new String[]{CONTENT_ITEM_TYPE, cursorString}, PHONE_TYPE);
                            query2.moveToFirst();
                            String cursorString2 = getCursorString(query2, DISPLAY_NAME);
                            contactDetails.setNames(cursorString2, getCursorString(query2, FAMILY_NAME), getCursorString(query2, PHONE_TYPE));
                            query2.close();
                            if ((Integer.parseInt(getCursorString(query, HAS_PHONE_NUMBER)) > 0 ? 1 : null) != null) {
                                query2 = contentResolver.query(PHONE_CONTENT_URI, null, "contact_id = " + cursorString, null, null);
                                while (query2.moveToNext()) {
                                    contactDetails.addPhoneNumber(getCursorString(query2, PHONE_NUMBER), getCursorInt(query2, PHONE_TYPE));
                                }
                                query2.close();
                            }
                            String cursorString3 = getCursorString(query, PHOTO_URI);
                            if (!StringUtility.isNullOrEmpty(cursorString3)) {
                                savedLocalFileFromUri = FileUtility.getSavedLocalFileFromUri(currentContext, Uri.parse(cursorString3), "contacts", cursorString);
                                if (savedLocalFileFromUri == null) {
                                    Debug.error(CommonDefines.ADDRESS_BOOK_TAG, "Unable to load profile image for below details");
                                    Debug.log(CommonDefines.ADDRESS_BOOK_TAG, "Name : " + cursorString2);
                                    Debug.log(CommonDefines.ADDRESS_BOOK_TAG, "pictureUriString : " + cursorString3);
                                }
                                if (savedLocalFileFromUri != null) {
                                    contactDetails.setPicturePath(savedLocalFileFromUri);
                                }
                            }
                            query2 = contentResolver.query(EMAIL_CONTENT_URI, null, "contact_id = ?", new String[]{cursorString}, null);
                            while (query2.moveToNext()) {
                                savedLocalFileFromUri = getCursorString(query2, PHONE_NUMBER);
                                if (savedLocalFileFromUri != null) {
                                    contactDetails.addEmail(savedLocalFileFromUri, getCursorInt(query2, PHONE_TYPE));
                                }
                            }
                            query2.close();
                            arrayList.add(contactDetails.getHash());
                        } catch (Exception e2) {
                            e = e2;
                            query2 = query;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } while (query.moveToNext());
                }
                System.gc();
                obj = AddressBook.ACCESS_AUTHORIZED;
                if (query != null) {
                    query.close();
                }
                obj2 = arrayList;
            } catch (Exception e3) {
                e = e3;
                query2 = query;
                try {
                    e.printStackTrace();
                    Debug.error(CommonDefines.ADDRESS_BOOK_TAG, e.getMessage());
                    obj = AddressBook.ACCESS_RESTRICTED;
                    if (query2 == null) {
                        obj2 = null;
                    } else {
                        query2.close();
                        obj2 = null;
                    }
                    hashMap = new HashMap();
                    hashMap.put(AddressBook.AUTH_STATUS, obj);
                    hashMap.put(AddressBook.CONTACTS_LIST, obj2);
                    NativePluginHelper.sendMessage(UnityDefines.AddressBook.READ_CONTACTS_FINISED, hashMap);
                } catch (Throwable th3) {
                    th = th3;
                    cursor = query2;
                    query = cursor;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                cursor = query;
                query = cursor;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            query2 = null;
            e.printStackTrace();
            Debug.error(CommonDefines.ADDRESS_BOOK_TAG, e.getMessage());
            obj = AddressBook.ACCESS_RESTRICTED;
            if (query2 == null) {
                query2.close();
                obj2 = null;
            } else {
                obj2 = null;
            }
            hashMap = new HashMap();
            hashMap.put(AddressBook.AUTH_STATUS, obj);
            hashMap.put(AddressBook.CONTACTS_LIST, obj2);
            NativePluginHelper.sendMessage(UnityDefines.AddressBook.READ_CONTACTS_FINISED, hashMap);
        } catch (Throwable th5) {
            th = th5;
            query = cursor;
            if (query != null) {
                query.close();
            }
            throw th;
        }
        hashMap = new HashMap();
        hashMap.put(AddressBook.AUTH_STATUS, obj);
        hashMap.put(AddressBook.CONTACTS_LIST, obj2);
        NativePluginHelper.sendMessage(UnityDefines.AddressBook.READ_CONTACTS_FINISED, hashMap);
    }

    public void addContact(String str) {
        new Thread(new C09922(JSONUtility.getJSON(str))).start();
    }

    int getCursorInt(Cursor cursor, String str) {
        return cursor.getInt(cursor.getColumnIndex(str));
    }

    String getCursorString(Cursor cursor, String str) {
        String str2 = null;
        try {
            int columnIndex = cursor.getColumnIndex(str);
            if (columnIndex != -1) {
                str2 = cursor.getString(columnIndex);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str2;
    }

    public boolean isAuthorized() {
        return ApplicationUtility.hasPermission(NativePluginHelper.getCurrentContext(), Permission.READ_CONTACTS);
    }

    public void readContacts() {
        new Thread(new C09911()).start();
    }
}
