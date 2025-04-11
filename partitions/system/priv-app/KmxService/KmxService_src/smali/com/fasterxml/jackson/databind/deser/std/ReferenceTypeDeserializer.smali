.class public abstract Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "TT;>;",
        "Lcom/fasterxml/jackson/databind/deser/i;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected final _fullType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _valueDeserializer:Lcom/fasterxml/jackson/databind/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation
.end field

.field protected final _valueInstantiator:Lcom/fasterxml/jackson/databind/deser/v;

.field protected final _valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/deser/v;",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/v;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_fullType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/i;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)V

    return-void
.end method


# virtual methods
.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_fullType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_fullType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/g;->forProperty(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object v0

    :cond_1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    if-ne v0, p2, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->withResolved(Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;

    move-result-object p0

    return-object p0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/g;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/v;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/i;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/i;->deserializeWithType(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/g;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->referenceValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/g;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "TT;)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/i;->supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->getReferenced(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/i;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/i;->deserializeWithType(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/g;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->referenceValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/i;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/i;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/i;->deserializeWithType(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/g;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p3, p1}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->updateReference(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/g;)Ljava/lang/Object;
    .locals 0

    sget-object p3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/core/g;->V0(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/g;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->referenceValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getEmptyAccessPattern()Lcom/fasterxml/jackson/databind/util/AccessPattern;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/databind/util/AccessPattern;->DYNAMIC:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    return-object p0
.end method

.method public getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getNullAccessPattern()Lcom/fasterxml/jackson/databind/util/AccessPattern;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/databind/util/AccessPattern;->DYNAMIC:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    return-object p0
.end method

.method public abstract getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getReferenced(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/v;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/v;

    return-object p0
.end method

.method public getValueType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_fullType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object p0
.end method

.method public logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/i;->logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/i;->logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object p0

    return-object p0
.end method

.method public abstract referenceValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/i;->supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public abstract updateReference(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withResolved(Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/i;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer<",
            "TT;>;"
        }
    .end annotation
.end method
