.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsSignerCredentials;
.super Lorg/spongycastle/crypto/tls/AbstractTlsCredentials;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsSignerCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsCredentials;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignatureAndHashAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TlsSignerCredentials implementation does not support (D)TLS 1.2+"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
