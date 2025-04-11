.class public Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;
.super Lcom/fasterxml/jackson/databind/deser/v;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _delegate:Lcom/fasterxml/jackson/databind/deser/v;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/v;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->_delegate:Lcom/fasterxml/jackson/databind/deser/v;

    return-void
.end method


# virtual methods
.method public canCreateFromBoolean()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromBoolean()Z

    move-result p0

    return p0
.end method

.method public canCreateFromDouble()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromDouble()Z

    move-result p0

    return p0
.end method

.method public canCreateFromInt()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromInt()Z

    move-result p0

    return p0
.end method

.method public canCreateFromLong()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromLong()Z

    move-result p0

    return p0
.end method

.method public canCreateFromObjectWith()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromObjectWith()Z

    move-result p0

    return p0
.end method

.method public canCreateFromString()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromString()Z

    move-result p0

    return p0
.end method

.method public canCreateUsingArrayDelegate()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateUsingArrayDelegate()Z

    move-result p0

    return p0
.end method

.method public canCreateUsingDefault()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateUsingDefault()Z

    move-result p0

    return p0
.end method

.method public canCreateUsingDelegate()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateUsingDelegate()Z

    move-result p0

    return p0
.end method

.method public canInstantiate()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canInstantiate()Z

    move-result p0

    return p0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->_delegate:Lcom/fasterxml/jackson/databind/deser/v;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/v;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p1

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->_delegate:Lcom/fasterxml/jackson/databind/deser/v;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;-><init>(Lcom/fasterxml/jackson/databind/deser/v;)V

    :goto_0
    return-object p0
.end method

.method public createFromBigDecimal(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/math/BigDecimal;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/v;->createFromBigDecimal(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/math/BigDecimal;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromBigInteger(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/math/BigInteger;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/v;->createFromBigInteger(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/v;->createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromDouble(Lcom/fasterxml/jackson/databind/DeserializationContext;D)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/v;->createFromDouble(Lcom/fasterxml/jackson/databind/DeserializationContext;D)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromInt(Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/v;->createFromInt(Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromLong(Lcom/fasterxml/jackson/databind/DeserializationContext;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/v;->createFromLong(Lcom/fasterxml/jackson/databind/DeserializationContext;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/impl/k;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/v;->createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/impl/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/v;->createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/v;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createUsingArrayDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/v;->createUsingArrayDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/v;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/v;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public delegate()Lcom/fasterxml/jackson/databind/deser/v;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->_delegate:Lcom/fasterxml/jackson/databind/deser/v;

    return-object p0
.end method

.method public getArrayDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getArrayDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object p0

    return-object p0
.end method

.method public getArrayDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/v;->getArrayDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getDefaultCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object p0

    return-object p0
.end method

.method public getDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object p0

    return-object p0
.end method

.method public getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/v;->getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/v;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p0

    return-object p0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getValueTypeDesc()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueTypeDesc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWithArgsCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getWithArgsCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object p0

    return-object p0
.end method
