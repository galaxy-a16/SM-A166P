.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsPeer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public notifyAlertReceived(SS)V
    .locals 0

    return-void
.end method

.method public notifyHandshakeComplete()V
    .locals 0

    return-void
.end method

.method public notifySecureRenegotiation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x28

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public shouldUseGMTUnixTime()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
