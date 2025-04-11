.class final Lio/netty/handler/ssl/util/X509KeyManagerWrapper;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SourceFile"


# instance fields
.field private final delegate:Ljavax/net/ssl/X509KeyManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509KeyManager;)V
    .locals 1

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509KeyManager;

    iput-object p1, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {p0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {p0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {p0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {p0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
