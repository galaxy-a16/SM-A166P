.class public abstract Lorg/spongycastle/crypto/tls/DefaultTlsServer;
.super Lorg/spongycastle/crypto/tls/AbstractTlsServer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method


# virtual methods
.method public createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsServer;->getDHParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method public createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsServer;->getDHParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method public createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 7

    new-instance v6, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->namedCurves:[I

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->serverECPointFormats:[S

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v6
.end method

.method public createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 7

    new-instance v6, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->namedCurves:[I

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->serverECPointFormats:[S

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v6
.end method

.method public createRSAKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 1

    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public getCipherSuites()[I
    .locals 0

    const/16 p0, 0x12

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0xc030
        0xc02f
        0xc028
        0xc027
        0xc014
        0xc013
        0x9f
        0x9e
        0x6b
        0x67
        0x39
        0x33
        0x9d
        0x9c
        0x3d
        0x3c
        0x35
        0x2f
    .end array-data
.end method

.method public getCredentials()Lorg/spongycastle/crypto/tls/TlsCredentials;
    .locals 2

    iget v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    const/16 p0, 0x14

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsServer;->getECDSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsServer;->getRSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsServer;->getDSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsServer;->getRSAEncryptionCredentials()Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    move-result-object p0

    return-object p0
.end method

.method public getDHParameters()Lorg/spongycastle/crypto/params/DHParameters;
    .locals 0

    sget-object p0, Lorg/spongycastle/crypto/agreement/DHStandardGroups;->rfc7919_ffdhe2048:Lorg/spongycastle/crypto/params/DHParameters;

    return-object p0
.end method

.method public getDSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    .locals 1

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public getECDSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    .locals 1

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    iget v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsServer;->createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsServer;->createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsServer;->createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsServer;->createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsServer;->createRSAKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRSAEncryptionCredentials()Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;
    .locals 1

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public getRSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    .locals 1

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method
