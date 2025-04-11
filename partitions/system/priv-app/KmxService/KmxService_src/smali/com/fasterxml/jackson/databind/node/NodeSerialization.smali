.class Lcom/fasterxml/jackson/databind/node/NodeSerialization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/io/Externalizable;


# static fields
.field protected static final LONGEST_EAGER_ALLOC:I = 0x186a0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public json:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/NodeSerialization;->json:[B

    return-void
.end method

.method private _read(Ljava/io/ObjectInput;I)[B
    .locals 4

    const/4 p0, 0x0

    const v0, 0x186a0

    if-gt p2, v0, :cond_0

    new-array v0, p2, [B

    invoke-interface {p1, v0, p0, p2}, Ljava/io/DataInput;->readFully([BII)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/core/util/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/core/util/c;-><init>(Lcom/fasterxml/jackson/core/util/a;I)V

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/c;->t()V

    iget-object v0, v1, Lcom/fasterxml/jackson/core/util/c;->d:[B

    :goto_0
    move v2, p0

    :cond_1
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {p1, v0, p0, v3}, Ljava/io/DataInput;->readFully([BII)V

    sub-int/2addr p2, v3

    add-int/2addr v2, v3

    if-nez p2, :cond_2

    iput v2, v1, Lcom/fasterxml/jackson/core/util/c;->e:I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p0

    return-object p0

    :cond_2
    array-length v3, v0

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/c;->a()V

    iget-object v0, v1, Lcom/fasterxml/jackson/core/util/c;->d:[B

    goto :goto_0
.end method

.method public static from(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/NodeSerialization;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/fasterxml/jackson/databind/node/NodeSerialization;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/c;->a:Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsBytes(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/NodeSerialization;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to JDK serialize `"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "` value: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/NodeSerialization;->_read(Ljava/io/ObjectInput;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/NodeSerialization;->json:[B

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/NodeSerialization;->json:[B

    sget-object v0, Lcom/fasterxml/jackson/databind/node/c;->d:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to JDK deserialize `JsonNode` value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeSerialization;->json:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/NodeSerialization;->json:[B

    invoke-interface {p1, p0}, Ljava/io/ObjectOutput;->write([B)V

    return-void
.end method
