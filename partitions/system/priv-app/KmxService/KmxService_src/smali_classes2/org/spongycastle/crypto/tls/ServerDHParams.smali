.class public Lorg/spongycastle/crypto/tls/ServerDHParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/ServerDHParams;->publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'publicKey\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerDHParams;
    .locals 5

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Lorg/spongycastle/crypto/tls/ServerDHParams;

    new-instance v3, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    new-instance v4, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-direct {v4, v0, v1}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v3, p0, v4}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/spongycastle/crypto/tls/ServerDHParams;-><init>(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)V

    return-object v2
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerDHParams;->publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/ServerDHParams;->publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    return-void
.end method

.method public getPublicKey()Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/ServerDHParams;->publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    return-object p0
.end method
