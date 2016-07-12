package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonPointer;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.RawValue;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class ObjectNode extends ContainerNode<ObjectNode> {
    protected final Map<String, JsonNode> _children;

    public ObjectNode(JsonNodeFactory jsonNodeFactory) {
        super(jsonNodeFactory);
        this._children = new LinkedHashMap();
    }

    public ObjectNode(JsonNodeFactory jsonNodeFactory, Map<String, JsonNode> map) {
        super(jsonNodeFactory);
        this._children = map;
    }

    protected JsonNode _at(JsonPointer jsonPointer) {
        return get(jsonPointer.getMatchingProperty());
    }

    protected boolean _childrenEqual(ObjectNode objectNode) {
        return this._children.equals(objectNode._children);
    }

    protected ObjectNode _put(String str, JsonNode jsonNode) {
        this._children.put(str, jsonNode);
        return this;
    }

    public JsonToken asToken() {
        return JsonToken.START_OBJECT;
    }

    public ObjectNode deepCopy() {
        ObjectNode objectNode = new ObjectNode(this._nodeFactory);
        for (Entry entry : this._children.entrySet()) {
            objectNode._children.put(entry.getKey(), ((JsonNode) entry.getValue()).deepCopy());
        }
        return objectNode;
    }

    public Iterator<JsonNode> elements() {
        return this._children.values().iterator();
    }

    public boolean equals(Object obj) {
        return obj == this ? true : (obj == null || !(obj instanceof ObjectNode)) ? false : _childrenEqual((ObjectNode) obj);
    }

    public boolean equals(Comparator<JsonNode> comparator, JsonNode jsonNode) {
        if (!(jsonNode instanceof ObjectNode)) {
            return false;
        }
        ObjectNode objectNode = (ObjectNode) jsonNode;
        Map map = this._children;
        Map map2 = objectNode._children;
        if (map2.size() == map.size()) {
            for (Entry entry : map.entrySet()) {
                JsonNode jsonNode2 = (JsonNode) map2.get(entry.getKey());
                if (jsonNode2 != null) {
                    if (comparator.compare(entry.getValue(), jsonNode2) != 0) {
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }

    public Iterator<String> fieldNames() {
        return this._children.keySet().iterator();
    }

    public Iterator<Entry<String, JsonNode>> fields() {
        return this._children.entrySet().iterator();
    }

    public ObjectNode findParent(String str) {
        for (Entry entry : this._children.entrySet()) {
            if (str.equals(entry.getKey())) {
                return this;
            }
            JsonNode findParent = ((JsonNode) entry.getValue()).findParent(str);
            if (findParent != null) {
                return (ObjectNode) findParent;
            }
        }
        return null;
    }

    public List<JsonNode> findParents(String str, List<JsonNode> list) {
        for (Entry entry : this._children.entrySet()) {
            List findParents;
            if (str.equals(entry.getKey())) {
                if (list == null) {
                    list = new ArrayList();
                }
                findParents.add(this);
            } else {
                findParents = ((JsonNode) entry.getValue()).findParents(str, list);
            }
        }
        return list;
    }

    public JsonNode findValue(String str) {
        for (Entry entry : this._children.entrySet()) {
            if (str.equals(entry.getKey())) {
                return (JsonNode) entry.getValue();
            }
            JsonNode findValue = ((JsonNode) entry.getValue()).findValue(str);
            if (findValue != null) {
                return findValue;
            }
        }
        return null;
    }

    public List<JsonNode> findValues(String str, List<JsonNode> list) {
        for (Entry entry : this._children.entrySet()) {
            List findValues;
            if (str.equals(entry.getKey())) {
                if (list == null) {
                    list = new ArrayList();
                }
                findValues.add(entry.getValue());
            } else {
                findValues = ((JsonNode) entry.getValue()).findValues(str, list);
            }
        }
        return list;
    }

    public List<String> findValuesAsText(String str, List<String> list) {
        for (Entry entry : this._children.entrySet()) {
            List findValuesAsText;
            if (str.equals(entry.getKey())) {
                if (list == null) {
                    list = new ArrayList();
                }
                findValuesAsText.add(((JsonNode) entry.getValue()).asText());
            } else {
                findValuesAsText = ((JsonNode) entry.getValue()).findValuesAsText(str, list);
            }
        }
        return list;
    }

    public JsonNode get(int i) {
        return null;
    }

    public JsonNode get(String str) {
        return (JsonNode) this._children.get(str);
    }

    public JsonNodeType getNodeType() {
        return JsonNodeType.OBJECT;
    }

    public int hashCode() {
        return this._children.hashCode();
    }

    public boolean isEmpty(SerializerProvider serializerProvider) {
        return this._children.isEmpty();
    }

    public JsonNode path(int i) {
        return MissingNode.getInstance();
    }

    public JsonNode path(String str) {
        JsonNode jsonNode = (JsonNode) this._children.get(str);
        return jsonNode != null ? jsonNode : MissingNode.getInstance();
    }

    @Deprecated
    public JsonNode put(String str, JsonNode jsonNode) {
        Object nullNode;
        if (jsonNode == null) {
            nullNode = nullNode();
        }
        return (JsonNode) this._children.put(str, nullNode);
    }

    public ObjectNode put(String str, double d) {
        return _put(str, numberNode(d));
    }

    public ObjectNode put(String str, float f) {
        return _put(str, numberNode(f));
    }

    public ObjectNode put(String str, int i) {
        return _put(str, numberNode(i));
    }

    public ObjectNode put(String str, long j) {
        return _put(str, numberNode(j));
    }

    public ObjectNode put(String str, Boolean bool) {
        return _put(str, bool == null ? nullNode() : booleanNode(bool.booleanValue()));
    }

    public ObjectNode put(String str, Double d) {
        return _put(str, d == null ? nullNode() : numberNode(d.doubleValue()));
    }

    public ObjectNode put(String str, Float f) {
        return _put(str, f == null ? nullNode() : numberNode(f.floatValue()));
    }

    public ObjectNode put(String str, Integer num) {
        return _put(str, num == null ? nullNode() : numberNode(num.intValue()));
    }

    public ObjectNode put(String str, Long l) {
        return _put(str, l == null ? nullNode() : numberNode(l.longValue()));
    }

    public ObjectNode put(String str, Short sh) {
        return _put(str, sh == null ? nullNode() : numberNode(sh.shortValue()));
    }

    public ObjectNode put(String str, String str2) {
        return _put(str, str2 == null ? nullNode() : textNode(str2));
    }

    public ObjectNode put(String str, BigDecimal bigDecimal) {
        return _put(str, bigDecimal == null ? nullNode() : numberNode(bigDecimal));
    }

    public ObjectNode put(String str, short s) {
        return _put(str, numberNode(s));
    }

    public ObjectNode put(String str, boolean z) {
        return _put(str, booleanNode(z));
    }

    public ObjectNode put(String str, byte[] bArr) {
        return _put(str, bArr == null ? nullNode() : binaryNode(bArr));
    }

    @Deprecated
    public JsonNode putAll(ObjectNode objectNode) {
        return setAll(objectNode);
    }

    @Deprecated
    public JsonNode putAll(Map<String, ? extends JsonNode> map) {
        return setAll((Map) map);
    }

    public ArrayNode putArray(String str) {
        JsonNode arrayNode = arrayNode();
        _put(str, arrayNode);
        return arrayNode;
    }

    public ObjectNode putNull(String str) {
        this._children.put(str, nullNode());
        return this;
    }

    public ObjectNode putObject(String str) {
        JsonNode objectNode = objectNode();
        _put(str, objectNode);
        return objectNode;
    }

    public ObjectNode putPOJO(String str, Object obj) {
        return _put(str, pojoNode(obj));
    }

    public ObjectNode putRawValue(String str, RawValue rawValue) {
        return _put(str, rawValueNode(rawValue));
    }

    public JsonNode remove(String str) {
        return (JsonNode) this._children.remove(str);
    }

    public ObjectNode remove(Collection<String> collection) {
        this._children.keySet().removeAll(collection);
        return this;
    }

    public ObjectNode removeAll() {
        this._children.clear();
        return this;
    }

    public JsonNode replace(String str, JsonNode jsonNode) {
        Object nullNode;
        if (jsonNode == null) {
            nullNode = nullNode();
        }
        return (JsonNode) this._children.put(str, nullNode);
    }

    public ObjectNode retain(Collection<String> collection) {
        this._children.keySet().retainAll(collection);
        return this;
    }

    public ObjectNode retain(String... strArr) {
        return retain(Arrays.asList(strArr));
    }

    public void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeStartObject();
        for (Entry entry : this._children.entrySet()) {
            jsonGenerator.writeFieldName((String) entry.getKey());
            ((BaseJsonNode) entry.getValue()).serialize(jsonGenerator, serializerProvider);
        }
        jsonGenerator.writeEndObject();
    }

    public void serializeWithType(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        typeSerializer.writeTypePrefixForObject(this, jsonGenerator);
        for (Entry entry : this._children.entrySet()) {
            jsonGenerator.writeFieldName((String) entry.getKey());
            ((BaseJsonNode) entry.getValue()).serialize(jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffixForObject(this, jsonGenerator);
    }

    public JsonNode set(String str, JsonNode jsonNode) {
        Object nullNode;
        if (jsonNode == null) {
            nullNode = nullNode();
        }
        this._children.put(str, nullNode);
        return this;
    }

    public JsonNode setAll(ObjectNode objectNode) {
        this._children.putAll(objectNode._children);
        return this;
    }

    public JsonNode setAll(Map<String, ? extends JsonNode> map) {
        for (Entry entry : map.entrySet()) {
            Object obj = (JsonNode) entry.getValue();
            if (obj == null) {
                obj = nullNode();
            }
            this._children.put(entry.getKey(), obj);
        }
        return this;
    }

    public int size() {
        return this._children.size();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder((size() << 4) + 32);
        stringBuilder.append("{");
        int i = 0;
        for (Entry entry : this._children.entrySet()) {
            if (i > 0) {
                stringBuilder.append(",");
            }
            int i2 = i + 1;
            TextNode.appendQuoted(stringBuilder, (String) entry.getKey());
            stringBuilder.append(':');
            stringBuilder.append(((JsonNode) entry.getValue()).toString());
            i = i2;
        }
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public ObjectNode with(String str) {
        JsonNode jsonNode = (JsonNode) this._children.get(str);
        if (jsonNode == null) {
            ObjectNode objectNode = objectNode();
            this._children.put(str, objectNode);
            return objectNode;
        } else if (jsonNode instanceof ObjectNode) {
            return (ObjectNode) jsonNode;
        } else {
            throw new UnsupportedOperationException("Property '" + str + "' has value that is not of type ObjectNode (but " + jsonNode.getClass().getName() + ")");
        }
    }

    public ArrayNode withArray(String str) {
        JsonNode jsonNode = (JsonNode) this._children.get(str);
        if (jsonNode == null) {
            ArrayNode arrayNode = arrayNode();
            this._children.put(str, arrayNode);
            return arrayNode;
        } else if (jsonNode instanceof ArrayNode) {
            return (ArrayNode) jsonNode;
        } else {
            throw new UnsupportedOperationException("Property '" + str + "' has value that is not of type ArrayNode (but " + jsonNode.getClass().getName() + ")");
        }
    }

    public JsonNode without(String str) {
        this._children.remove(str);
        return this;
    }

    public ObjectNode without(Collection<String> collection) {
        this._children.keySet().removeAll(collection);
        return this;
    }
}
