.class public Lorg/spongycastle/crypto/tls/SRPTlsServer;
.super Lorg/spongycastle/crypto/tls/AbstractTlsServer;
.source "SourceFile"


# instance fields
.field protected loginParameters:Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

.field protected srpIdentity:[B

.field protected srpIdentityManager:Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentity:[B

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->loginParameters:Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentityManager:Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/tls/SRPTlsServer;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;)V

    return-void
.end method


# virtual methods
.method public createSRPKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 3

    new-instance v0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentity:[B

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->loginParameters:Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;-><init>(ILjava/util/Vector;[BLorg/spongycastle/crypto/tls/TlsSRPLoginParameters;)V

    return-object v0
.end method

.method public getCipherSuites()[I
    .locals 0

    const/4 p0, 0x6

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0xc022
        0xc01f
        0xc021
        0xc01e
        0xc020
        0xc01d
    .end array-data
.end method

.method public getCredentials()Lorg/spongycastle/crypto/tls/TlsCredentials;
    .locals 1

    iget v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SRPTlsServer;->getRSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SRPTlsServer;->getDSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    .locals 1

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 1

    iget v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/SRPTlsServer;->createSRPKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getRSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    .locals 1

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public getSelectedCipherSuite()I
    .locals 3

    invoke-super {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->getSelectedCipherSuite()I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->isSRPCipherSuite(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentity:[B

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentityManager:Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;

    invoke-interface {v2, v1}, Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;->getLoginParameters([B)Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->loginParameters:Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->loginParameters:Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x73

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    :goto_0
    return v0
.end method

.method public processClientExtensions(Ljava/util/Hashtable;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->getSRPExtension(Ljava/util/Hashtable;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentity:[B

    return-void
.end method
