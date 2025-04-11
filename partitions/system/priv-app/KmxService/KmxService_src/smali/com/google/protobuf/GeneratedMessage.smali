.class public abstract Lcom/google/protobuf/GeneratedMessage;
.super Lcom/google/protobuf/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
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
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage;->unknownFields:Lcom/google/protobuf/ob;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/t5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t5;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/protobuf/o4;)Lcom/google/protobuf/n4;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessage;->checkNotLite(Lcom/google/protobuf/o4;)Lcom/google/protobuf/n4;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/google/protobuf/GeneratedMessage;Z)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static checkNotLite(Lcom/google/protobuf/o4;)Lcom/google/protobuf/n4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<",
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

.method public static enableAlwaysUseFieldBuildersForTesting()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method private getAllFieldsMutable(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/n3;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/y5;

    const/4 p0, 0x0

    throw p0
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

.method public static newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/n8;)Lcom/google/protobuf/z5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/n8;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Lcom/google/protobuf/n8;",
            ")",
            "Lcom/google/protobuf/z5;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/z5;

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/protobuf/z5;-><init>(Lcom/google/protobuf/v5;Ljava/lang/Class;Lcom/google/protobuf/n8;)V

    return-object v0
.end method

.method public static newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/n8;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/z5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/n8;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Lcom/google/protobuf/n8;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/protobuf/z5;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/protobuf/z5;

    new-instance v1, Lcom/google/protobuf/r5;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/protobuf/r5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/protobuf/z5;-><init>(Lcom/google/protobuf/v5;Ljava/lang/Class;Lcom/google/protobuf/n8;)V

    return-object v0
.end method

.method public static newMessageScopedGeneratedExtension(Lcom/google/protobuf/n8;ILjava/lang/Class;Lcom/google/protobuf/n8;)Lcom/google/protobuf/z5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/n8;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n8;",
            "I",
            "Ljava/lang/Class;",
            "Lcom/google/protobuf/n8;",
            ")",
            "Lcom/google/protobuf/z5;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/z5;

    new-instance v1, Lcom/google/protobuf/p5;

    invoke-direct {v1, p0, p1}, Lcom/google/protobuf/p5;-><init>(Lcom/google/protobuf/n8;I)V

    sget-object p0, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    invoke-direct {v0, v1, p2, p3}, Lcom/google/protobuf/z5;-><init>(Lcom/google/protobuf/v5;Ljava/lang/Class;Lcom/google/protobuf/n8;)V

    return-object v0
.end method

.method public static newMessageScopedGeneratedExtension(Lcom/google/protobuf/n8;Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/n8;)Lcom/google/protobuf/z5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/n8;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n8;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Lcom/google/protobuf/n8;",
            ")",
            "Lcom/google/protobuf/z5;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/protobuf/z5;

    new-instance v1, Lcom/google/protobuf/q5;

    invoke-direct {v1, p0, p1}, Lcom/google/protobuf/q5;-><init>(Lcom/google/protobuf/n8;Ljava/lang/String;)V

    sget-object p0, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    invoke-direct {v0, v1, p2, p3}, Lcom/google/protobuf/z5;-><init>(Lcom/google/protobuf/v5;Ljava/lang/Class;Lcom/google/protobuf/n8;)V

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

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessage;->getAllFieldsMutable(Z)Ljava/util/Map;

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

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessage;->getAllFieldsMutable(Z)Ljava/util/Map;

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

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/y5;

    const/4 p0, 0x0

    throw p0
.end method

.method public getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/y5;

    const/4 p0, 0x0

    throw p0
.end method

.method public getFieldRaw(Lcom/google/protobuf/n3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/y5;

    const/4 p0, 0x0

    throw p0
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/s3;)Lcom/google/protobuf/n3;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/y5;

    const/4 p0, 0x0

    throw p0
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
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/y5;

    const/4 p0, 0x0

    throw p0
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/n3;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/y5;

    const/4 p0, 0x0

    throw p0
.end method

.method public getSerializedSize()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/protobuf/c8;->U(Lcom/google/protobuf/n8;Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    return v0
.end method

.method public getUnknownFields()Lcom/google/protobuf/ob;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is supposed to be overridden by subclasses."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasField(Lcom/google/protobuf/n3;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/y5;

    const/4 p0, 0x0

    throw p0
.end method

.method public hasOneof(Lcom/google/protobuf/s3;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/y5;

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract internalGetFieldAccessorTable()Lcom/google/protobuf/y5;
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

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getDescriptorForType()Lcom/google/protobuf/h3;

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

    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage;->hasField(Lcom/google/protobuf/n3;)Z

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

    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

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
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage;->hasField(Lcom/google/protobuf/n3;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

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

.method public abstract synthetic newBuilderForType()Lcom/google/protobuf/m8;
.end method

.method public newBuilderForType(Lcom/google/protobuf/b;)Lcom/google/protobuf/m8;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/o5;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/o5;-><init>(Lcom/google/protobuf/b;I)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessage;->newBuilderForType(Lcom/google/protobuf/u5;)Lcom/google/protobuf/m8;

    move-result-object p0

    return-object p0
.end method

.method public abstract newBuilderForType(Lcom/google/protobuf/u5;)Lcom/google/protobuf/m8;
.end method

.method public abstract synthetic newBuilderForType()Lcom/google/protobuf/q8;
.end method

.method public parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/lb;Lcom/google/protobuf/t4;I)Z
    .locals 0

    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/lb;->d(ILcom/google/protobuf/i0;)Z

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

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/protobuf/c8;->f0(Lcom/google/protobuf/n8;Ljava/util/Map;Lcom/google/protobuf/n0;)V

    return-void
.end method
