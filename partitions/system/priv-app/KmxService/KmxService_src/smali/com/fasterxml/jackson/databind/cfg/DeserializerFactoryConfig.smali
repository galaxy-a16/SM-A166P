.class public Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_KEY_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/q;

.field protected static final NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/fasterxml/jackson/databind/a;

.field protected static final NO_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/p;

.field protected static final NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/deser/g;

.field protected static final NO_VALUE_INSTANTIATORS:[Lcom/fasterxml/jackson/databind/deser/x;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/a;

.field protected final _additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/p;

.field protected final _additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/q;

.field protected final _modifiers:[Lcom/fasterxml/jackson/databind/deser/g;

.field protected final _valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/deser/p;

    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/p;

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/deser/g;

    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/deser/g;

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/a;

    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/fasterxml/jackson/databind/a;

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/deser/x;

    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_VALUE_INSTANTIATORS:[Lcom/fasterxml/jackson/databind/deser/x;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fasterxml/jackson/databind/deser/q;

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;-><init>()V

    aput-object v2, v1, v0

    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->DEFAULT_KEY_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/p;[Lcom/fasterxml/jackson/databind/deser/q;[Lcom/fasterxml/jackson/databind/deser/g;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/x;)V

    return-void
.end method

.method public constructor <init>([Lcom/fasterxml/jackson/databind/deser/p;[Lcom/fasterxml/jackson/databind/deser/q;[Lcom/fasterxml/jackson/databind/deser/g;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/x;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/p;

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/p;

    if-nez p2, :cond_1

    sget-object p2, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->DEFAULT_KEY_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/q;

    :cond_1
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/q;

    if-nez p3, :cond_2

    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/deser/g;

    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/g;

    if-nez p4, :cond_3

    sget-object p4, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/fasterxml/jackson/databind/a;

    :cond_3
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/a;

    if-nez p5, :cond_4

    sget-object p5, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_VALUE_INSTANTIATORS:[Lcom/fasterxml/jackson/databind/deser/x;

    :cond_4
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/x;

    return-void
.end method


# virtual methods
.method public abstractTypeResolvers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/d;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/a;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public deserializerModifiers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/deser/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/d;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/g;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public deserializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/deser/p;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/d;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/p;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public hasAbstractTypeResolvers()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/a;

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasDeserializerModifiers()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/g;

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasDeserializers()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/p;

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasKeyDeserializers()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/q;

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasValueInstantiators()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/x;

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keyDeserializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/deser/q;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/d;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/q;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public valueInstantiators()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/deser/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/d;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/x;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/a;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/a;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/c;->c([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Lcom/fasterxml/jackson/databind/a;

    new-instance p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/p;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/q;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/g;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/x;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/p;[Lcom/fasterxml/jackson/databind/deser/q;[Lcom/fasterxml/jackson/databind/deser/g;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/x;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null resolver"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/p;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/p;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/c;->c([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Lcom/fasterxml/jackson/databind/deser/p;

    new-instance p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/q;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/g;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/a;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/x;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/p;[Lcom/fasterxml/jackson/databind/deser/q;[Lcom/fasterxml/jackson/databind/deser/g;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/x;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null Deserializers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/q;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/q;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/c;->c([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [Lcom/fasterxml/jackson/databind/deser/q;

    new-instance p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/p;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/g;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/a;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/x;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/p;[Lcom/fasterxml/jackson/databind/deser/q;[Lcom/fasterxml/jackson/databind/deser/g;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/x;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null KeyDeserializers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/g;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null modifier"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/x;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/x;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/c;->c([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Lcom/fasterxml/jackson/databind/deser/x;

    new-instance p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/p;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/q;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/g;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/a;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/p;[Lcom/fasterxml/jackson/databind/deser/q;[Lcom/fasterxml/jackson/databind/deser/g;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/x;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null resolver"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
