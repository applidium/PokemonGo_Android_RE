package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.ser.impl.ObjectIdWriter;
import java.util.List;

public class BeanSerializerBuilder {
    private static final BeanPropertyWriter[] NO_PROPERTIES;
    protected AnyGetterWriter _anyGetter;
    protected final BeanDescription _beanDesc;
    protected SerializationConfig _config;
    protected Object _filterId;
    protected BeanPropertyWriter[] _filteredProperties;
    protected ObjectIdWriter _objectIdWriter;
    protected List<BeanPropertyWriter> _properties;
    protected AnnotatedMember _typeId;

    static {
        NO_PROPERTIES = new BeanPropertyWriter[0];
    }

    public BeanSerializerBuilder(BeanDescription beanDescription) {
        this._beanDesc = beanDescription;
    }

    protected BeanSerializerBuilder(BeanSerializerBuilder beanSerializerBuilder) {
        this._beanDesc = beanSerializerBuilder._beanDesc;
        this._properties = beanSerializerBuilder._properties;
        this._filteredProperties = beanSerializerBuilder._filteredProperties;
        this._anyGetter = beanSerializerBuilder._anyGetter;
        this._filterId = beanSerializerBuilder._filterId;
    }

    public JsonSerializer<?> build() {
        BeanPropertyWriter[] beanPropertyWriterArr;
        if (this._properties != null && !this._properties.isEmpty()) {
            beanPropertyWriterArr = (BeanPropertyWriter[]) this._properties.toArray(new BeanPropertyWriter[this._properties.size()]);
        } else if (this._anyGetter == null && this._objectIdWriter == null) {
            return null;
        } else {
            beanPropertyWriterArr = NO_PROPERTIES;
        }
        return new BeanSerializer(this._beanDesc.getType(), this, beanPropertyWriterArr, this._filteredProperties);
    }

    public BeanSerializer createDummy() {
        return BeanSerializer.createDummy(this._beanDesc.getType());
    }

    public AnyGetterWriter getAnyGetter() {
        return this._anyGetter;
    }

    public BeanDescription getBeanDescription() {
        return this._beanDesc;
    }

    public AnnotatedClass getClassInfo() {
        return this._beanDesc.getClassInfo();
    }

    public Object getFilterId() {
        return this._filterId;
    }

    public BeanPropertyWriter[] getFilteredProperties() {
        return this._filteredProperties;
    }

    public ObjectIdWriter getObjectIdWriter() {
        return this._objectIdWriter;
    }

    public List<BeanPropertyWriter> getProperties() {
        return this._properties;
    }

    public AnnotatedMember getTypeId() {
        return this._typeId;
    }

    public boolean hasProperties() {
        return this._properties != null && this._properties.size() > 0;
    }

    public void setAnyGetter(AnyGetterWriter anyGetterWriter) {
        this._anyGetter = anyGetterWriter;
    }

    protected void setConfig(SerializationConfig serializationConfig) {
        this._config = serializationConfig;
    }

    public void setFilterId(Object obj) {
        this._filterId = obj;
    }

    public void setFilteredProperties(BeanPropertyWriter[] beanPropertyWriterArr) {
        this._filteredProperties = beanPropertyWriterArr;
    }

    public void setObjectIdWriter(ObjectIdWriter objectIdWriter) {
        this._objectIdWriter = objectIdWriter;
    }

    public void setProperties(List<BeanPropertyWriter> list) {
        this._properties = list;
    }

    public void setTypeId(AnnotatedMember annotatedMember) {
        if (this._typeId != null) {
            throw new IllegalArgumentException("Multiple type ids specified with " + this._typeId + " and " + annotatedMember);
        }
        this._typeId = annotatedMember;
    }
}
