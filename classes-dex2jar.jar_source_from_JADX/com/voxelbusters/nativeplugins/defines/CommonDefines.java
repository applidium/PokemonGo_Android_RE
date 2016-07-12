package com.voxelbusters.nativeplugins.defines;

import spacemadness.com.lunarconsole.BuildConfig;

public class CommonDefines {
    public static final String ADDRESS_BOOK_TAG = "NativePlugins.AddressBook";
    public static final String APPLICATION_UTILITY_TAG = "NativePlugins.ApplicationUtility";
    public static final String BILLING_TAG = "NativePlugins.Billing";
    public static String DEFAULT_STRING = null;
    public static final String FILE_UTILS_TAG = "NativePlugins.FileUtils";
    public static final String GAME_SERVICES_TAG = "NativePlugins.GameServices";
    public static final String JSON_UTILS_TAG = "NativePlugins.JSONUtility";
    public static final String MEDIAL_LIBRARY_TAG = "NativePlugins.MediaLibrary";
    public static final String NETWORK_CONNECTIVITY_TAG = "NativePlugins.NetworkConnectivity";
    public static final String NOTIFICATION_TAG = "NativePlugins.Notification";
    public static String PROJECT_ASSETS_EXPECTED_FOLDER = null;
    public static String PROJECT_ASSETS_FOLDER_OLD = null;
    public static final String PROJECT_TAG = "NativePlugins";
    public static String SHARING_DIR = null;
    public static final String SHARING_TAG = "NativePlugins.Sharing";
    public static final String STRING_UTILS_TAG = "NativePlugins.StringUtility";
    public static final String TWITTER_TAG = "NativePlugins.SocialNetworking.Twitter";
    public static final String UI_TAG = "NativePlugins.Ui";
    public static final String WEB_VIEW_TAG = "NativePlugins.WebView";

    static {
        DEFAULT_STRING = BuildConfig.FLAVOR;
        SHARING_DIR = "sharing";
        PROJECT_ASSETS_FOLDER_OLD = "VoxelBusters/NativePlugins/Android/";
        PROJECT_ASSETS_EXPECTED_FOLDER = "Assets/PluginResources/NativePlugins/Android or Assets/PluginResources/NativePlugins/Common";
    }
}
