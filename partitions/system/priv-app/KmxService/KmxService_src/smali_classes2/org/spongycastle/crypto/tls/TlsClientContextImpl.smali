.class Lorg/spongycastle/crypto/tls/TlsClientContextImpl;
.super Lorg/spongycastle/crypto/tls/AbstractTlsContext;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsClientContext;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V

    return-void
.end method


# virtual methods
.method public isServer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
