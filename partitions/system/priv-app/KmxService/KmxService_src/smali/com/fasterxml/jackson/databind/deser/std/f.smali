.class public abstract Lcom/fasterxml/jackson/databind/deser/std/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/f;->a:Ljava/util/HashSet;

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/util/UUID;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-class v4, Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-class v4, Ljava/lang/StackTraceElement;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-class v4, Ljava/nio/ByteBuffer;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-class v4, Ljava/lang/Void;

    aput-object v4, v1, v2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, v1, v2

    sget-object v5, Lcom/fasterxml/jackson/databind/deser/std/f;->a:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->types()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/f;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
