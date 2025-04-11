.class public final Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;
.super Lcom/fasterxml/jackson/databind/i;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/i;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _deserializer:Lcom/fasterxml/jackson/databind/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation
.end field

.field protected final _typeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/i;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_typeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/fasterxml/jackson/databind/i;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/fasterxml/jackson/databind/i;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_typeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    invoke-virtual {v0, p1, p2, p0}, Lcom/fasterxml/jackson/databind/i;->deserializeWithType(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/i;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/g;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Type-wrapped deserializer\'s deserializeWithType should never get called"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDelegatee()Lcom/fasterxml/jackson/databind/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->getDelegatee()Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    return-object p0
.end method

.method public getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/i;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getKnownPropertyNames()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->getKnownPropertyNames()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/i;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public handledType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->handledType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object p0

    return-object p0
.end method

.method public supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/i;->supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
