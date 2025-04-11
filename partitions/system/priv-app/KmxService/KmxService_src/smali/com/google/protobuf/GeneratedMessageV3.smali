.class public abstract Lcom/google/protobuf/GeneratedMessageV3;
.super Lcom/google/protobuf/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;
    }
.end annotation


# static fields
.field protected static alwaysUseFieldBuilders:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected unknownFields:Lcom/google/protobuf/ob;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    .line 1
    sget-object v0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/d6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/d6;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/d6;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    return-void
.end method

.method public static synthetic access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/protobuf/o4;)Lcom/google/protobuf/n4;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->checkNotLite(Lcom/google/protobuf/o4;)Lcom/google/protobuf/n4;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/google/protobuf/GeneratedMessageV3;Z)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static canUseUnsafe()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/wb;->e:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/protobuf/wb;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static checkNotLite(Lcom/google/protobuf/o4;)Lcom/google/protobuf/n4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage<",
            "TMessageType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/o4;",
            ")",
            "Lcom/google/protobuf/n4;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/google/protobuf/n4;

    return-object p0
.end method

.method public static computeStringSize(ILjava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/protobuf/n0;->p(ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p0, p1}, Lcom/google/protobuf/n0;->d(ILcom/google/protobuf/ByteString;)I

    move-result p0

    return p0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/n0;->q(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    check-cast p0, Lcom/google/protobuf/ByteString;

    invoke-static {p0}, Lcom/google/protobuf/n0;->e(Lcom/google/protobuf/ByteString;)I

    move-result p0

    return p0
.end method

.method public static emptyBooleanList()Lcom/google/protobuf/x6;
    .locals 1

    sget-object v0, Lcom/google/protobuf/t;->d:Lcom/google/protobuf/t;

    return-object v0
.end method

.method public static emptyDoubleList()Lcom/google/protobuf/y6;
    .locals 1

    sget-object v0, Lcom/google/protobuf/v3;->d:Lcom/google/protobuf/v3;

    return-object v0
.end method

.method public static emptyFloatList()Lcom/google/protobuf/c7;
    .locals 1

    sget-object v0, Lcom/google/protobuf/l5;->d:Lcom/google/protobuf/l5;

    return-object v0
.end method

.method public static emptyIntList()Lcom/google/protobuf/d7;
    .locals 1

    sget-object v0, Lcom/google/protobuf/w6;->d:Lcom/google/protobuf/w6;

    return-object v0
.end method

.method public static emptyLongList()Lcom/google/protobuf/e7;
    .locals 1

    sget-object v0, Lcom/google/protobuf/t7;->d:Lcom/google/protobuf/t7;

    return-object v0
.end method

.method public static enableAlwaysUseFieldBuildersForTesting()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->setAlwaysUseFieldBuildersForTesting(Z)V

    return-void
.end method

.method private getAllFieldsMutable(Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/n3;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v1

    iget-object v1, v1, Lcom/google/protobuf/q6;->a:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/n3;

    iget-object v4, v3, Lcom/google/protobuf/n3;->j:Lcom/google/protobuf/s3;

    if-eqz v4, :cond_1

    iget v3, v4, Lcom/google/protobuf/s3;->f:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->hasOneof(Lcom/google/protobuf/s3;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->getOneofFieldDescriptor(Lcom/google/protobuf/s3;)Lcom/google/protobuf/n3;

    move-result-object v3

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/n3;->q()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    :goto_1
    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->hasField(Lcom/google/protobuf/n3;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {v3}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->getFieldRaw(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generated message class \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static isStringEmpty(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0

    :cond_0
    check-cast p0, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private static maybeSerializeBooleanEntryTo(Lcom/google/protobuf/n0;Ljava/util/Map;Lcom/google/protobuf/z7;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n0;",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "TV;>;",
            "Lcom/google/protobuf/z7;",
            "IZ)V"
        }
    .end annotation

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/protobuf/z7;->e()Lcom/google/protobuf/x7;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/google/protobuf/x7;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/google/protobuf/x7;->d:Z

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/google/protobuf/x7;->c:Ljava/lang/Object;

    iput-boolean v0, p2, Lcom/google/protobuf/x7;->e:Z

    invoke-virtual {p2}, Lcom/google/protobuf/x7;->b()Lcom/google/protobuf/z7;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/n0;->I(ILcom/google/protobuf/r8;)V

    :cond_0
    return-void
.end method

.method public static mutableCopy(Lcom/google/protobuf/c7;)Lcom/google/protobuf/c7;
    .locals 3

    check-cast p0, Lcom/google/protobuf/l5;

    .line 5
    iget v0, p0, Lcom/google/protobuf/l5;->c:I

    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    if-lt v1, v0, :cond_1

    .line 6
    new-instance v0, Lcom/google/protobuf/l5;

    iget-object v2, p0, Lcom/google/protobuf/l5;->b:[F

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iget p0, p0, Lcom/google/protobuf/l5;->c:I

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/l5;-><init>(I[F)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/d7;)Lcom/google/protobuf/d7;
    .locals 3

    check-cast p0, Lcom/google/protobuf/w6;

    .line 7
    iget v0, p0, Lcom/google/protobuf/w6;->c:I

    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    if-lt v1, v0, :cond_1

    .line 8
    new-instance v0, Lcom/google/protobuf/w6;

    iget-object v2, p0, Lcom/google/protobuf/w6;->b:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget p0, p0, Lcom/google/protobuf/w6;->c:I

    invoke-direct {v0, v1, p0}, Lcom/google/protobuf/w6;-><init>([II)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/e7;)Lcom/google/protobuf/e7;
    .locals 3

    check-cast p0, Lcom/google/protobuf/t7;

    .line 9
    iget v0, p0, Lcom/google/protobuf/t7;->c:I

    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    if-lt v1, v0, :cond_1

    .line 10
    new-instance v0, Lcom/google/protobuf/t7;

    iget-object v2, p0, Lcom/google/protobuf/t7;->b:[J

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iget p0, p0, Lcom/google/protobuf/t7;->c:I

    invoke-direct {v0, v1, p0}, Lcom/google/protobuf/t7;-><init>([JI)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/x6;)Lcom/google/protobuf/x6;
    .locals 3

    check-cast p0, Lcom/google/protobuf/t;

    .line 1
    iget v0, p0, Lcom/google/protobuf/t;->c:I

    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    if-lt v1, v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/t;

    iget-object v2, p0, Lcom/google/protobuf/t;->b:[Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iget p0, p0, Lcom/google/protobuf/t;->c:I

    invoke-direct {v0, v1, p0}, Lcom/google/protobuf/t;-><init>([ZI)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/y6;)Lcom/google/protobuf/y6;
    .locals 3

    check-cast p0, Lcom/google/protobuf/v3;

    .line 3
    iget v0, p0, Lcom/google/protobuf/v3;->c:I

    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    if-lt v1, v0, :cond_1

    .line 4
    new-instance v0, Lcom/google/protobuf/v3;

    iget-object v2, p0, Lcom/google/protobuf/v3;->b:[D

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iget p0, p0, Lcom/google/protobuf/v3;->c:I

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/v3;-><init>(I[D)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static newBooleanList()Lcom/google/protobuf/x6;
    .locals 3

    new-instance v0, Lcom/google/protobuf/t;

    const/16 v1, 0xa

    new-array v1, v1, [Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/t;-><init>([ZI)V

    return-object v0
.end method

.method public static newDoubleList()Lcom/google/protobuf/y6;
    .locals 3

    new-instance v0, Lcom/google/protobuf/v3;

    const/16 v1, 0xa

    new-array v1, v1, [D

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/protobuf/v3;-><init>(I[D)V

    return-object v0
.end method

.method public static newFloatList()Lcom/google/protobuf/c7;
    .locals 3

    new-instance v0, Lcom/google/protobuf/l5;

    const/16 v1, 0xa

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/protobuf/l5;-><init>(I[F)V

    return-object v0
.end method

.method public static newIntList()Lcom/google/protobuf/d7;
    .locals 3

    new-instance v0, Lcom/google/protobuf/w6;

    const/16 v1, 0xa

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/w6;-><init>([II)V

    return-object v0
.end method

.method public static newLongList()Lcom/google/protobuf/e7;
    .locals 3

    new-instance v0, Lcom/google/protobuf/t7;

    const/16 v1, 0xa

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/t7;-><init>([JI)V

    return-object v0
.end method

.method public static parseDelimitedWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;)Lcom/google/protobuf/n8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/n8;",
            ">(",
            "Lcom/google/protobuf/o9;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/protobuf/o9;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/n8;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseDelimitedWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/n8;",
            ">(",
            "Lcom/google/protobuf/o9;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/t4;",
            ")TM;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/o9;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/n8;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/google/protobuf/o9;Lcom/google/protobuf/i0;)Lcom/google/protobuf/n8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/n8;",
            ">(",
            "Lcom/google/protobuf/o9;",
            "Lcom/google/protobuf/i0;",
            ")TM;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/protobuf/o9;->parseFrom(Lcom/google/protobuf/i0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/n8;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/google/protobuf/o9;Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/n8;",
            ">(",
            "Lcom/google/protobuf/o9;",
            "Lcom/google/protobuf/i0;",
            "Lcom/google/protobuf/t4;",
            ")TM;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/o9;->parseFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/n8;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;)Lcom/google/protobuf/n8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/n8;",
            ">(",
            "Lcom/google/protobuf/o9;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/protobuf/o9;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/n8;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/n8;",
            ">(",
            "Lcom/google/protobuf/o9;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/t4;",
            ")TM;"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/o9;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/n8;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static serializeBooleanMapTo(Lcom/google/protobuf/n0;Lcom/google/protobuf/h8;Lcom/google/protobuf/z7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n0;",
            "Lcom/google/protobuf/h8;",
            "Lcom/google/protobuf/z7;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/h8;->e()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3;->serializeMapTo(Lcom/google/protobuf/n0;Ljava/util/Map;Lcom/google/protobuf/z7;I)V

    return-void
.end method

.method public static serializeIntegerMapTo(Lcom/google/protobuf/n0;Lcom/google/protobuf/h8;Lcom/google/protobuf/z7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n0;",
            "Lcom/google/protobuf/h8;",
            "Lcom/google/protobuf/z7;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/h8;->e()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3;->serializeMapTo(Lcom/google/protobuf/n0;Ljava/util/Map;Lcom/google/protobuf/z7;I)V

    return-void
.end method

.method public static serializeLongMapTo(Lcom/google/protobuf/n0;Lcom/google/protobuf/h8;Lcom/google/protobuf/z7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n0;",
            "Lcom/google/protobuf/h8;",
            "Lcom/google/protobuf/z7;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/h8;->e()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3;->serializeMapTo(Lcom/google/protobuf/n0;Ljava/util/Map;Lcom/google/protobuf/z7;I)V

    return-void
.end method

.method private static serializeMapTo(Lcom/google/protobuf/n0;Ljava/util/Map;Lcom/google/protobuf/z7;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n0;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/z7;",
            "I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p2}, Lcom/google/protobuf/z7;->e()Lcom/google/protobuf/x7;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/protobuf/x7;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/protobuf/x7;->d:Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/google/protobuf/x7;->c:Ljava/lang/Object;

    iput-boolean v2, v1, Lcom/google/protobuf/x7;->e:Z

    invoke-virtual {v1}, Lcom/google/protobuf/x7;->b()Lcom/google/protobuf/z7;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/google/protobuf/n0;->I(ILcom/google/protobuf/r8;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static serializeStringMapTo(Lcom/google/protobuf/n0;Lcom/google/protobuf/h8;Lcom/google/protobuf/z7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n0;",
            "Lcom/google/protobuf/h8;",
            "Lcom/google/protobuf/z7;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/h8;->e()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3;->serializeMapTo(Lcom/google/protobuf/n0;Ljava/util/Map;Lcom/google/protobuf/z7;I)V

    return-void
.end method

.method public static setAlwaysUseFieldBuildersForTesting(Z)V
    .locals 0

    sput-boolean p0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method public static writeString(Lcom/google/protobuf/n0;ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/n0;->M(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/n0;->A(ILcom/google/protobuf/ByteString;)V

    :goto_0
    return-void
.end method

.method public static writeStringNoTag(Lcom/google/protobuf/n0;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/n0;->N(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/n0;->B(Lcom/google/protobuf/ByteString;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/n3;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageV3;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAllFieldsRaw()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/n3;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageV3;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/n8;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/r8;
.end method

.method public getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object p0

    iget-object p0, p0, Lcom/google/protobuf/q6;->a:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/h6;->b(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getFieldRaw(Lcom/google/protobuf/n3;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/h6;->k(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/s3;)Lcom/google/protobuf/n3;
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->a(Lcom/google/protobuf/q6;Lcom/google/protobuf/s3;)Lo2/i;

    move-result-object p1

    iget-object v0, p1, Lo2/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/n3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageV3;->hasField(Lcom/google/protobuf/n3;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lo2/i;->c:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/google/protobuf/n3;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lo2/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/z6;

    invoke-interface {p0}, Lcom/google/protobuf/z6;->getNumber()I

    move-result p0

    if-lez p0, :cond_1

    iget-object p1, p1, Lo2/i;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/h3;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/h3;->g(I)Lcom/google/protobuf/n3;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/o9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o9;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is supposed to be overridden by subclasses."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRepeatedField(Lcom/google/protobuf/n3;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/h6;->n(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/n3;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/h6;->a(Lcom/google/protobuf/GeneratedMessageV3;)I

    move-result p0

    return p0
.end method

.method public getSerializedSize()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/protobuf/c8;->U(Lcom/google/protobuf/n8;Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    return v0
.end method

.method public getUnknownFields()Lcom/google/protobuf/ob;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public hasField(Lcom/google/protobuf/n3;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/h6;->d(Lcom/google/protobuf/GeneratedMessageV3;)Z

    move-result p0

    return p0
.end method

.method public hasOneof(Lcom/google/protobuf/s3;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->a(Lcom/google/protobuf/q6;Lcom/google/protobuf/s3;)Lo2/i;

    move-result-object p1

    iget-object v0, p1, Lo2/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/n3;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageV3;->hasField(Lcom/google/protobuf/n3;)Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lo2/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/z6;

    invoke-interface {p0}, Lcom/google/protobuf/z6;->getNumber()I

    move-result p0

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public abstract internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
.end method

.method public internalGetMapField(I)Lcom/google/protobuf/h8;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "No map fields found in "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isInitialized()Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n3;

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->r()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->hasField(Lcom/google/protobuf/n3;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/n8;

    invoke-interface {v2}, Lcom/google/protobuf/s8;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->hasField(Lcom/google/protobuf/n3;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n8;

    invoke-interface {v1}, Lcom/google/protobuf/s8;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public makeExtensionsImmutable()V
    .locals 0

    return-void
.end method

.method public mergeFromAndMakeImmutableInternal(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/protobuf/q9;->c:Lcom/google/protobuf/q9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/q9;->a(Ljava/lang/Class;)Lcom/google/protobuf/z9;

    move-result-object v0

    :try_start_0
    iget-object v1, p1, Lcom/google/protobuf/i0;->d:Lcom/google/protobuf/k0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/protobuf/k0;

    invoke-direct {v1, p1}, Lcom/google/protobuf/k0;-><init>(Lcom/google/protobuf/i0;)V

    :goto_0
    invoke-interface {v0, p0, v1, p2}, Lcom/google/protobuf/z9;->c(Ljava/lang/Object;Lcom/google/protobuf/t9;Lcom/google/protobuf/t4;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0, p0}, Lcom/google/protobuf/z9;->b(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :goto_2
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public abstract synthetic newBuilderForType()Lcom/google/protobuf/m8;
.end method

.method public newBuilderForType(Lcom/google/protobuf/b;)Lcom/google/protobuf/m8;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/o5;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/o5;-><init>(Lcom/google/protobuf/b;I)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageV3;->newBuilderForType(Lcom/google/protobuf/e6;)Lcom/google/protobuf/m8;

    move-result-object p0

    return-object p0
.end method

.method public abstract newBuilderForType(Lcom/google/protobuf/e6;)Lcom/google/protobuf/m8;
.end method

.method public abstract synthetic newBuilderForType()Lcom/google/protobuf/q8;
.end method

.method public newInstance(Lcom/google/protobuf/r6;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This method must be overridden by the subclass."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/lb;Lcom/google/protobuf/t4;I)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/lb;->d(ILcom/google/protobuf/i0;)Z

    move-result p0

    return p0
.end method

.method public parseUnknownFieldProto3(Lcom/google/protobuf/i0;Lcom/google/protobuf/lb;Lcom/google/protobuf/t4;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/lb;Lcom/google/protobuf/t4;I)Z

    move-result p0

    return p0
.end method

.method public abstract synthetic toBuilder()Lcom/google/protobuf/m8;
.end method

.method public abstract synthetic toBuilder()Lcom/google/protobuf/q8;
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;-><init>(Lcom/google/protobuf/r8;)V

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/n0;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/protobuf/c8;->f0(Lcom/google/protobuf/n8;Ljava/util/Map;Lcom/google/protobuf/n0;)V

    return-void
.end method
