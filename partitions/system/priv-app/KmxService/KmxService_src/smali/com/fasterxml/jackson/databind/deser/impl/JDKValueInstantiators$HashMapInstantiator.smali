.class Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$HashMapInstantiator;
.super Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$HashMapInstantiator;

.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$HashMapInstantiator;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$HashMapInstantiator;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$HashMapInstantiator;->INSTANCE:Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$HashMapInstantiator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public canCreateUsingDefault()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canInstantiate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method
