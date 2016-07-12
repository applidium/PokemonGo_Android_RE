package com.google.gson;

import com.google.gson.internal.LinkedTreeMap;
import java.util.Map.Entry;
import java.util.Set;

public final class JsonObject extends JsonElement {
    private final LinkedTreeMap<String, JsonElement> members;

    public JsonObject() {
        this.members = new LinkedTreeMap();
    }

    private JsonElement createJsonElement(Object obj) {
        return obj == null ? JsonNull.INSTANCE : new JsonPrimitive(obj);
    }

    public void add(String str, JsonElement jsonElement) {
        Object obj;
        if (jsonElement == null) {
            obj = JsonNull.INSTANCE;
        }
        this.members.put(str, obj);
    }

    public void addProperty(String str, Boolean bool) {
        add(str, createJsonElement(bool));
    }

    public void addProperty(String str, Character ch) {
        add(str, createJsonElement(ch));
    }

    public void addProperty(String str, Number number) {
        add(str, createJsonElement(number));
    }

    public void addProperty(String str, String str2) {
        add(str, createJsonElement(str2));
    }

    JsonObject deepCopy() {
        JsonObject jsonObject = new JsonObject();
        for (Entry entry : this.members.entrySet()) {
            jsonObject.add((String) entry.getKey(), ((JsonElement) entry.getValue()).deepCopy());
        }
        return jsonObject;
    }

    public Set<Entry<String, JsonElement>> entrySet() {
        return this.members.entrySet();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof JsonObject) && ((JsonObject) obj).members.equals(this.members));
    }

    public JsonElement get(String str) {
        return (JsonElement) this.members.get(str);
    }

    public JsonArray getAsJsonArray(String str) {
        return (JsonArray) this.members.get(str);
    }

    public JsonObject getAsJsonObject(String str) {
        return (JsonObject) this.members.get(str);
    }

    public JsonPrimitive getAsJsonPrimitive(String str) {
        return (JsonPrimitive) this.members.get(str);
    }

    public boolean has(String str) {
        return this.members.containsKey(str);
    }

    public int hashCode() {
        return this.members.hashCode();
    }

    public JsonElement remove(String str) {
        return (JsonElement) this.members.remove(str);
    }
}
