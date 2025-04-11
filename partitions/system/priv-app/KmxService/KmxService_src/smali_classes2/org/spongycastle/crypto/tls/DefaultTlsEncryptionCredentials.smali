.class public Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;
.super Lorg/spongycastle/crypto/tls/AbstractTlsEncryptionCredentials;
.source "SourceFile"


# instance fields
.field protected certificate:Lorg/spongycastle/crypto/tls/Certificate;

.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsEncryptionCredentials;-><init>()V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p3, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->certificate:Lorg/spongycastle/crypto/tls/Certificate;

    iput-object p3, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\'privateKey\' type not supported: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'privateKey\' must be private"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'privateKey\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'certificate\' cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'certificate\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public decryptPreMasterSecret([B)[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast p0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-static {v0, p0, p1}, Lorg/spongycastle/crypto/tls/TlsRSAUtils;->safeDecryptPreMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getCertificate()Lorg/spongycastle/crypto/tls/Certificate;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->certificate:Lorg/spongycastle/crypto/tls/Certificate;

    return-object p0
.end method
