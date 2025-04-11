.class public abstract Lcom/fasterxml/jackson/databind/deser/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _createFromStringFallbacks(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromBoolean()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-class v3, Ljava/lang/Boolean;

    sget-object v4, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->String:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p1, v0, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    sget-object v3, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/deser/v;->createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/v;->createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/g;

    move-result-object v4

    const-string v5, "no String-argument constructor/factory method to deserialize from String value (\'%s\')"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p2, v6, v1

    move-object v0, p1

    move-object v1, v3

    move-object v2, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/core/g;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public canCreateFromBigDecimal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canCreateFromBigInteger()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canCreateFromBoolean()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canCreateFromDouble()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canCreateFromInt()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canCreateFromLong()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canCreateFromObjectWith()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canCreateFromString()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canCreateUsingArrayDelegate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canCreateUsingDefault()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getDefaultCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canCreateUsingDelegate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canInstantiate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateUsingDefault()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateUsingDelegate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateUsingArrayDelegate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromObjectWith()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromString()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromInt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromLong()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromDouble()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateFromBoolean()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;
    .locals 0

    return-object p0
.end method

.method public createFromBigDecimal(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/math/BigDecimal;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "no BigDecimal/double/Double-argument constructor/factory method to deserialize from Number value (%s)"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/core/g;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromBigInteger(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/math/BigInteger;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "no BigInteger-argument constructor/factory method to deserialize from Number value (%s)"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/core/g;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "no boolean/Boolean-argument constructor/factory method to deserialize from boolean value (%s)"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v5, v0

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/core/g;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromDouble(Lcom/fasterxml/jackson/databind/DeserializationContext;D)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "no double/Double-argument constructor/factory method to deserialize from Number value (%s)"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v5, v0

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/core/g;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromInt(Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "no int/Int-argument constructor/factory method to deserialize from Number value (%s)"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/core/g;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromLong(Lcom/fasterxml/jackson/databind/DeserializationContext;J)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "no long/Long-argument constructor/factory method to deserialize from Number value (%s)"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v5, v0

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/core/g;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/impl/k;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p3, Lcom/fasterxml/jackson/databind/deser/impl/k;->e:I

    const/4 v1, 0x0

    .line 2
    iget-object v2, p3, Lcom/fasterxml/jackson/databind/deser/impl/k;->d:[Ljava/lang/Object;

    if-lez v0, :cond_2

    iget-object v0, p3, Lcom/fasterxml/jackson/databind/deser/impl/k;->g:Ljava/util/BitSet;

    if-nez v0, :cond_1

    iget v0, p3, Lcom/fasterxml/jackson/databind/deser/impl/k;->f:I

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_0

    aget-object v5, p2, v4

    invoke-virtual {p3, v5}, Lcom/fasterxml/jackson/databind/deser/impl/k;->a(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v3, v2

    move v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    invoke-virtual {p3, v5}, Lcom/fasterxml/jackson/databind/deser/impl/k;->a(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    iget-object p3, p3, Lcom/fasterxml/jackson/databind/deser/impl/k;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_4

    aget-object v3, v2, v0

    if-nez v3, :cond_3

    aget-object v3, p2, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    aget-object v5, p2, v0

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "Null value for creator property \'%s\' (index %d); `DeserializationFeature.FAIL_ON_NULL_CREATOR_PROPERTIES` enabled"

    invoke-virtual {p3, v3, v5, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/d;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3
    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/deser/v;->createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "no creator with arguments specified"

    const/4 p2, 0x0

    new-array v5, p2, [Ljava/lang/Object;

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/core/g;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/g;

    move-result-object v3

    const-string v4, "no String-argument constructor/factory method to deserialize from String value (\'%s\')"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/core/g;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createUsingArrayDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "no array delegate creator specified"

    const/4 p2, 0x0

    new-array v5, p2, [Ljava/lang/Object;

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/core/g;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "no default no-arguments constructor found"

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/core/g;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/v;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "no delegate creator specified"

    const/4 p2, 0x0

    new-array v5, p2, [Ljava/lang/Object;

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/core/g;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getArrayDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getArrayDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getValueClass()Ljava/lang/Class;
.end method

.method public abstract getValueTypeDesc()Ljava/lang/String;
.end method

.method public getWithArgsCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
