.class public interface abstract Lcom/fasterxml/jackson/databind/jsontype/i;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/g;
.end method

.method public abstract buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/k;
.end method

.method public abstract defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/i;
.end method

.method public abstract getDefaultImpl()Ljava/lang/Class;
.end method

.method public abstract inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/i;
.end method

.method public abstract init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/h;)Lcom/fasterxml/jackson/databind/jsontype/i;
.end method

.method public abstract typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/i;
.end method

.method public abstract typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/i;
.end method

.method public abstract withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/i;
.end method
