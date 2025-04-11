.class public Landroidx/work/impl/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/d;
.implements Lj3/c;
.implements Lcom/google/crypto/tink/shaded/protobuf/q;
.implements Lcom/google/crypto/tink/shaded/protobuf/f;
.implements Lu4/e;
.implements Lcom/google/protobuf/y;
.implements Lcom/google/protobuf/a7;
.implements Lgb/i;
.implements Lgb/g;


# static fields
.field public static b:Landroidx/work/impl/x;

.field public static c:Ljava/util/concurrent/ExecutorService;

.field public static d:Landroidx/work/impl/x;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/work/impl/x;->a:I

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/measurement/v0;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/v0;-><init>(Landroidx/work/impl/x;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Landroidx/work/impl/x;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 3
    iput p1, p0, Landroidx/work/impl/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 4
    iput p1, p0, Landroidx/work/impl/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/activity/b;)V
    .locals 1

    const/16 p1, 0xe

    iput p1, p0, Landroidx/work/impl/x;->a:I

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/work/impl/x;-><init>(II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/impl/v;)V
    .locals 1

    const/16 p1, 0x15

    iput p1, p0, Landroidx/work/impl/x;->a:I

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Landroidx/work/impl/x;-><init>(II)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 p1, 0xa

    iput p1, p0, Landroidx/work/impl/x;->a:I

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Landroidx/work/impl/x;-><init>(II)V

    return-void
.end method

.method public static e(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [[B

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lx8/a;->c([B)[B

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lx8/a;->c([B)[B

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v1}, Lx8/a;->a([[B)Ljava/math/BigInteger;

    move-result-object p1

    new-array v0, v0, [[B

    sget-object v1, Lx8/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lx8/a;->c([B)[B

    move-result-object v4

    aput-object v4, v0, v2

    sget-object v2, Lx8/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lx8/a;->c([B)[B

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lx8/a;->a([[B)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, p3, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [[B

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-array p0, v0, [[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, p0, v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, p2, v0}, Lx8/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    invoke-static {p0}, Lx8/a;->a([[B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    aput-object p0, v1, p2

    invoke-static {v1}, Lx8/a;->a([[B)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static h()Landroidx/work/impl/x;
    .locals 2

    sget-object v0, Landroidx/work/impl/x;->d:Landroidx/work/impl/x;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/work/impl/x;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroidx/work/impl/x;-><init>(I)V

    sput-object v0, Landroidx/work/impl/x;->d:Landroidx/work/impl/x;

    :cond_0
    sget-object v0, Landroidx/work/impl/x;->d:Landroidx/work/impl/x;

    return-object v0
.end method

.method public static j(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [[B

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-array p0, v0, [[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, p0, v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, p2, v0}, Lx8/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    invoke-static {p0}, Lx8/a;->a([[B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    aput-object p0, v1, p2

    invoke-static {v1}, Lx8/a;->a([[B)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Lx8/a;->a:Ljava/math/BigInteger;

    sget-object p2, Lx8/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, p0, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static final k()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(II[B)[B
    .locals 1

    iget p0, p0, Landroidx/work/impl/x;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/2addr p2, p1

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :goto_0
    new-array p0, p2, [B

    const/4 v0, 0x0

    invoke-static {p3, p1, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lvc/d;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lvc/d;->request(J)V

    return-void
.end method

.method public b(FF)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final c(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/work/impl/x;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-nez p2, :cond_0

    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_1
    if-nez p2, :cond_1

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_2
    if-nez p2, :cond_2

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-static {p1, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    :goto_2
    return-object p0

    :goto_3
    if-nez p2, :cond_3

    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    goto :goto_4

    :cond_3
    invoke-static {p1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p0

    :goto_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lab/a;)V
    .locals 3

    sget-object v0, Landroidx/work/impl/x;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lr3/l;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0, p1}, Lr3/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final depositSchemaProperty(Lj2/c;Lcom/fasterxml/jackson/databind/z;)V
    .locals 0

    return-void
.end method

.method public final findPropertyFormat(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 0

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p0

    return-object p0
.end method

.method public final findPropertyInclusion(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;Lj3/a;)Lj3/b;
    .locals 4

    iget p0, p0, Landroidx/work/impl/x;->a:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    new-instance p0, Lj3/b;

    invoke-direct {p0}, Lj3/b;-><init>()V

    invoke-interface {p3, p1, p2}, Lj3/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lj3/b;->a:I

    if-eqz v3, :cond_0

    invoke-interface {p3, p1, p2, v0}, Lj3/a;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p3, p1, p2, v2}, Lj3/a;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    :goto_0
    iput p1, p0, Lj3/b;->b:I

    iget p2, p0, Lj3/b;->a:I

    if-nez p2, :cond_1

    if-nez p1, :cond_2

    iput v0, p0, Lj3/b;->c:I

    goto :goto_1

    :cond_1
    move v0, p2

    :cond_2
    if-lt v0, p1, :cond_3

    iput v1, p0, Lj3/b;->c:I

    goto :goto_1

    :cond_3
    iput v2, p0, Lj3/b;->c:I

    :goto_1
    return-object p0

    :pswitch_1
    new-instance p0, Lj3/b;

    invoke-direct {p0}, Lj3/b;-><init>()V

    invoke-interface {p3, p1, p2, v0}, Lj3/a;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lj3/b;->b:I

    if-nez p1, :cond_4

    iput v0, p0, Lj3/b;->c:I

    goto :goto_2

    :cond_4
    iput v2, p0, Lj3/b;->c:I

    :goto_2
    return-object p0

    :pswitch_2
    new-instance p0, Lj3/b;

    invoke-direct {p0}, Lj3/b;-><init>()V

    invoke-interface {p3, p1, p2, v2}, Lj3/a;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lj3/b;->b:I

    if-eqz v0, :cond_5

    iput v2, p0, Lj3/b;->c:I

    goto :goto_3

    :cond_5
    invoke-interface {p3, p1, p2}, Lj3/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lj3/b;->a:I

    if-eqz p1, :cond_6

    iput v1, p0, Lj3/b;->c:I

    :cond_6
    :goto_3
    return-object p0

    :goto_4
    new-instance p0, Lj3/b;

    invoke-direct {p0}, Lj3/b;-><init>()V

    invoke-interface {p3, p1, p2}, Lj3/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lj3/b;->a:I

    if-eqz v3, :cond_7

    invoke-interface {p3, p1, p2, v0}, Lj3/a;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    goto :goto_5

    :cond_7
    invoke-interface {p3, p1, p2, v2}, Lj3/a;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    :goto_5
    iput p1, p0, Lj3/b;->b:I

    iget p2, p0, Lj3/b;->a:I

    if-nez p2, :cond_8

    if-nez p1, :cond_9

    iput v0, p0, Lj3/b;->c:I

    goto :goto_6

    :cond_8
    move v0, p2

    :cond_9
    if-lt p1, v0, :cond_a

    iput v2, p0, Lj3/b;->c:I

    goto :goto_6

    :cond_a
    iput v1, p0, Lj3/b;->c:I

    :goto_6
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/databind/PropertyName;->NO_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object p0
.end method

.method public final getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public final getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/n3;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->getNumber()I

    move-result p0

    return p0
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/work/impl/x;->a:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method
