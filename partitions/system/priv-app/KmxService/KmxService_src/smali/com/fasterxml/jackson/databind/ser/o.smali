.class public interface abstract Lcom/fasterxml/jackson/databind/ser/o;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract findArraySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
.end method

.method public abstract findCollectionLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
.end method

.method public abstract findCollectionSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
.end method

.method public abstract findMapLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
.end method

.method public abstract findMapSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
.end method

.method public abstract findReferenceSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
.end method

.method public abstract findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;
.end method
