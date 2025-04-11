.class final Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$finalContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$3;->val$finalContext:Ljavax/net/ssl/SSLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6

    :try_start_0
    const-class v0, Ljavax/net/ssl/SSLContext;

    const-string v1, "contextSpi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    iget-object p0, p0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$3;->val$finalContext:Ljavax/net/ssl/SSLContext;

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    const-string v3, "trustManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lio/netty/util/internal/PlatformDependent;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v5, :cond_0

    new-instance v5, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;

    invoke-direct {v5, v0, v1, v3, v4}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;-><init>(JJ)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw p0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    return-object p0

    :catch_2
    move-exception p0

    return-object p0
.end method
