package com.upsight.android.managedvariables.internal.type;

import android.text.TextUtils;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.upsight.android.Upsight;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.managedvariables.type.UpsightManagedBoolean;
import com.upsight.android.managedvariables.type.UpsightManagedFloat;
import com.upsight.android.managedvariables.type.UpsightManagedInt;
import com.upsight.android.managedvariables.type.UpsightManagedString;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class UxmSchema {
    private static final String ITEM_SCHEMA_KEY_DEFAULT = "default";
    private static final String ITEM_SCHEMA_KEY_TAG = "tag";
    private static final String ITEM_SCHEMA_KEY_TYPE = "type";
    private static final Map<Class<? extends ManagedVariable>, Class<? extends BaseSchema>> sClassSchemaMap;
    private static final Map<String, Class<? extends BaseSchema>> sModelTypeSchemaMap;
    private static final Map<String, String> sTypeSchemaMap;
    private List<BaseSchema> mItemList;
    private Map<String, BaseSchema> mItemSchemaMap;
    private UpsightLogger mLogger;
    public final String mSchemaJsonString;

    /* renamed from: com.upsight.android.managedvariables.internal.type.UxmSchema.1 */
    static final class C09591 extends HashMap<Class<? extends ManagedVariable>, Class<? extends BaseSchema>> {
        C09591() {
            put(UpsightManagedString.class, StringSchema.class);
            put(UpsightManagedBoolean.class, BooleanSchema.class);
            put(UpsightManagedInt.class, IntSchema.class);
            put(UpsightManagedFloat.class, FloatSchema.class);
        }
    }

    /* renamed from: com.upsight.android.managedvariables.internal.type.UxmSchema.2 */
    static final class C09602 extends HashMap<String, String> {
        C09602() {
            put("string", "com.upsight.uxm.string");
            put("boolean", "com.upsight.uxm.boolean");
            put("integer", "com.upsight.uxm.integer");
            put("float", "com.upsight.uxm.float");
        }
    }

    /* renamed from: com.upsight.android.managedvariables.internal.type.UxmSchema.3 */
    static final class C09613 extends HashMap<String, Class<? extends BaseSchema>> {
        C09613() {
            put("com.upsight.uxm.string", StringSchema.class);
            put("com.upsight.uxm.boolean", BooleanSchema.class);
            put("com.upsight.uxm.integer", IntSchema.class);
            put("com.upsight.uxm.float", FloatSchema.class);
        }
    }

    public static class BaseSchema<T> {
        @JsonProperty("default")
        public T defaultValue;
        @JsonProperty("description")
        public String description;
        @JsonProperty("tag")
        public String tag;
        @JsonProperty("type")
        public String type;
    }

    public static class BooleanSchema extends BaseSchema<Boolean> {
    }

    public static class FloatSchema extends BaseSchema<Float> {
        @JsonProperty("max")
        public Float max;
        @JsonProperty("min")
        public Float min;
    }

    public static class IntSchema extends BaseSchema<Integer> {
        @JsonProperty("max")
        public Integer max;
        @JsonProperty("min")
        public Integer min;
    }

    public static class StringSchema extends BaseSchema<String> {
    }

    static {
        sClassSchemaMap = new C09591();
        sTypeSchemaMap = new C09602();
        sModelTypeSchemaMap = new C09613();
    }

    UxmSchema(UpsightLogger upsightLogger) {
        this.mItemList = new ArrayList();
        this.mItemSchemaMap = new HashMap();
        this.mLogger = upsightLogger;
        this.mSchemaJsonString = null;
    }

    private UxmSchema(List<BaseSchema> list, Map<String, BaseSchema> map, UpsightLogger upsightLogger, String str) {
        this.mItemList = new ArrayList();
        this.mItemSchemaMap = new HashMap();
        this.mItemList = list;
        this.mItemSchemaMap = map;
        this.mLogger = upsightLogger;
        this.mSchemaJsonString = str;
    }

    public static UxmSchema create(String str, ObjectMapper objectMapper, UpsightLogger upsightLogger) throws IllegalArgumentException {
        List arrayList = new ArrayList();
        Map hashMap = new HashMap();
        String str2;
        try {
            ArrayNode arrayNode = (ArrayNode) objectMapper.readTree(str);
            Iterator it = arrayNode.iterator();
            while (it.hasNext()) {
                JsonNode jsonNode = (JsonNode) it.next();
                String str3;
                if (!jsonNode.isObject()) {
                    str3 = "Managed variable schema must be a JSON object: " + jsonNode;
                    upsightLogger.m199e(Upsight.LOG_TAG, str3, new Object[0]);
                    throw new IllegalArgumentException(str3);
                } else if (!jsonNode.path(ITEM_SCHEMA_KEY_TAG).isTextual()) {
                    str3 = "Managed variable schema must contain a tag: " + jsonNode;
                    upsightLogger.m199e(Upsight.LOG_TAG, str3, new Object[0]);
                    throw new IllegalArgumentException(str3);
                } else if (!jsonNode.path(ITEM_SCHEMA_KEY_TYPE).isTextual()) {
                    str3 = "Managed variable schema must contain a type: " + jsonNode;
                    upsightLogger.m199e(Upsight.LOG_TAG, str3, new Object[0]);
                    throw new IllegalArgumentException(str3);
                } else if (jsonNode.has(ITEM_SCHEMA_KEY_DEFAULT)) {
                    str2 = (String) sTypeSchemaMap.get(jsonNode.path(ITEM_SCHEMA_KEY_TYPE).asText());
                    if (TextUtils.isEmpty(str2)) {
                        str3 = "Managed variable contains invalid types: " + jsonNode;
                        upsightLogger.m199e(Upsight.LOG_TAG, str3, new Object[0]);
                        throw new IllegalArgumentException(str3);
                    }
                    ((ObjectNode) jsonNode).put(ITEM_SCHEMA_KEY_TYPE, str2);
                    String asText = jsonNode.path(ITEM_SCHEMA_KEY_TAG).asText();
                    Class cls = (Class) sModelTypeSchemaMap.get(str2);
                    if (cls != null) {
                        try {
                            BaseSchema baseSchema = (BaseSchema) objectMapper.treeToValue(jsonNode, cls);
                            arrayList.add(baseSchema);
                            hashMap.put(asText, baseSchema);
                        } catch (Throwable e) {
                            str2 = "Managed variable contains invalid fields: " + jsonNode;
                            upsightLogger.m200e(Upsight.LOG_TAG, e, str2, new Object[0]);
                            throw new IllegalArgumentException(str2, e);
                        }
                    }
                    str3 = "Unknown managed variable type: " + str2;
                    upsightLogger.m199e(Upsight.LOG_TAG, str3, new Object[0]);
                    throw new IllegalArgumentException(str3);
                } else {
                    str3 = "Managed variable schema must contain a default value: " + jsonNode;
                    upsightLogger.m199e(Upsight.LOG_TAG, str3, new Object[0]);
                    throw new IllegalArgumentException(str3);
                }
            }
            return new UxmSchema(arrayList, hashMap, upsightLogger, arrayNode.toString());
        } catch (Throwable e2) {
            str2 = "Failed to parse UXM schema JSON: " + str;
            upsightLogger.m200e(Upsight.LOG_TAG, e2, str2, new Object[0]);
            throw new IllegalArgumentException(str2, e2);
        } catch (Throwable e22) {
            str2 = "UXM schema must be a JSON array: " + str;
            upsightLogger.m200e(Upsight.LOG_TAG, e22, str2, new Object[0]);
            throw new IllegalArgumentException(str2, e22);
        }
    }

    public <T extends ManagedVariable> BaseSchema get(Class<T> cls, String str) {
        BaseSchema baseSchema = (BaseSchema) this.mItemSchemaMap.get(str);
        if (baseSchema == null) {
            return null;
        }
        Class cls2 = (Class) sClassSchemaMap.get(cls);
        Class cls3 = (Class) sModelTypeSchemaMap.get(baseSchema.type);
        if (cls2 != null && cls3 != null && cls3.equals(cls2)) {
            return baseSchema;
        }
        String str2 = "The tag is not of the expected class: " + str;
        this.mLogger.m199e(Upsight.LOG_TAG, str2, new Object[0]);
        throw new IllegalArgumentException(str2);
    }

    public List<BaseSchema> getAllOrdered() {
        return new ArrayList(this.mItemList);
    }
}
