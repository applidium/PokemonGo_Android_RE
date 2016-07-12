package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.FilenameUtils;

public final class UnresolvedForwardReference extends JsonMappingException {
    private static final long serialVersionUID = 1;
    private ReadableObjectId _roid;
    private List<UnresolvedId> _unresolvedIds;

    public UnresolvedForwardReference(String str) {
        super(str);
        this._unresolvedIds = new ArrayList();
    }

    public UnresolvedForwardReference(String str, JsonLocation jsonLocation, ReadableObjectId readableObjectId) {
        super(str, jsonLocation);
        this._roid = readableObjectId;
    }

    public void addUnresolvedId(Object obj, Class<?> cls, JsonLocation jsonLocation) {
        this._unresolvedIds.add(new UnresolvedId(obj, cls, jsonLocation));
    }

    public String getMessage() {
        String message = super.getMessage();
        if (this._unresolvedIds == null) {
            return message;
        }
        StringBuilder stringBuilder = new StringBuilder(message);
        Iterator it = this._unresolvedIds.iterator();
        while (it.hasNext()) {
            stringBuilder.append(((UnresolvedId) it.next()).toString());
            if (it.hasNext()) {
                stringBuilder.append(", ");
            }
        }
        stringBuilder.append(FilenameUtils.EXTENSION_SEPARATOR);
        return stringBuilder.toString();
    }

    public ReadableObjectId getRoid() {
        return this._roid;
    }

    public Object getUnresolvedId() {
        return this._roid.getKey().key;
    }

    public List<UnresolvedId> getUnresolvedIds() {
        return this._unresolvedIds;
    }
}
