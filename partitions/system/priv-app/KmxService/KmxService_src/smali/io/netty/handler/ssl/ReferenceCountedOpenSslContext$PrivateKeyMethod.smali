.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/internal/tcnative/SSLPrivateKeyMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivateKeyMethod"
.end annotation


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private final keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    return-void
.end method

.method private retrieveEngine(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .locals 2

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {p0, p1, p2}, Lio/netty/handler/ssl/OpenSslEngineMap;->get(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljavax/net/ssl/SSLException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for sslPointer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static verifyResult([B)[B
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    invoke-direct {p0}, Ljava/security/SignatureException;-><init>()V

    throw p0
.end method


# virtual methods
.method public decrypt(J[B)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->retrieveEngine(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    invoke-interface {p0, p1, p3}, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->decrypt(Ljavax/net/ssl/SSLEngine;[B)[B

    move-result-object p0

    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->verifyResult([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p1, p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public sign(JI[B)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->retrieveEngine(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    invoke-interface {p0, p1, p3, p4}, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->sign(Ljavax/net/ssl/SSLEngine;I[B)[B

    move-result-object p0

    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->verifyResult([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p1, p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    throw p0
.end method
