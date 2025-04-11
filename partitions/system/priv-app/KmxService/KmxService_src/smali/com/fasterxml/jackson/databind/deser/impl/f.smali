.class public abstract Lcom/fasterxml/jackson/databind/deser/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;
    .locals 2

    const-class v0, Lcom/fasterxml/jackson/core/JsonLocation;

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;-><init>()V

    return-object p0

    :cond_0
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Ljava/util/ArrayList;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ArrayListInstantiator;->INSTANCE:Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ArrayListInstantiator;

    return-object p0

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p0, :cond_2

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p0, :cond_6

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_3
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$LinkedHashMapInstantiator;->INSTANCE:Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$LinkedHashMapInstantiator;

    return-object p0

    :cond_4
    const-class v0, Ljava/util/HashMap;

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$HashMapInstantiator;->INSTANCE:Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$HashMapInstantiator;

    return-object p0

    :cond_5
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p0, :cond_6

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method
