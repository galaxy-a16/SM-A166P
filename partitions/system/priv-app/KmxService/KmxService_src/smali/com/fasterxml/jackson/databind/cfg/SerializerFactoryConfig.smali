.class public final Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/ser/e;

.field protected static final NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/o;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/o;

.field protected final _additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/o;

.field protected final _modifiers:[Lcom/fasterxml/jackson/databind/ser/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/ser/o;

    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/o;

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/e;

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/ser/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/o;[Lcom/fasterxml/jackson/databind/ser/o;[Lcom/fasterxml/jackson/databind/ser/e;)V

    return-void
.end method

.method public constructor <init>([Lcom/fasterxml/jackson/databind/ser/o;[Lcom/fasterxml/jackson/databind/ser/o;[Lcom/fasterxml/jackson/databind/ser/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/o;

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/o;

    if-nez p2, :cond_1

    sget-object p2, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/o;

    :cond_1
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/o;

    if-nez p3, :cond_2

    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/ser/e;

    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/e;

    return-void
.end method


# virtual methods
.method public hasKeySerializers()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/o;

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSerializerModifiers()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/e;

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSerializers()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/o;

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keySerializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/ser/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/d;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/o;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public serializerModifiers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/ser/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/d;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/e;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public serializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/ser/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/d;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/o;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/o;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/o;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/c;->c([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fasterxml/jackson/databind/ser/o;

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/o;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/e;

    invoke-direct {v0, v1, p1, p0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/o;[Lcom/fasterxml/jackson/databind/ser/o;[Lcom/fasterxml/jackson/databind/ser/e;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null Serializers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/o;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/o;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/c;->c([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fasterxml/jackson/databind/ser/o;

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/o;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/e;

    invoke-direct {v0, p1, v1, p0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/o;[Lcom/fasterxml/jackson/databind/ser/o;[Lcom/fasterxml/jackson/databind/ser/e;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null Serializers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/e;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null modifier"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
