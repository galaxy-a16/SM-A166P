.class public Lorg/spongycastle/crypto/tls/DTLSTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/tls/DatagramTransport;


# instance fields
.field private final recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->close()V

    return-void
.end method

.method public getReceiveLimit()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getReceiveLimit()I

    move-result p0

    return p0
.end method

.method public getSendLimit()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getSendLimit()I

    move-result p0

    return p0
.end method

.method public receive([BIII)I
    .locals 2

    const/16 v0, 0x50

    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->receive([BIII)I

    move-result p0
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p0

    :catch_1
    move-exception p1

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw p1

    :catch_2
    move-exception p1

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result p2

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw p1
.end method

.method public send([BII)V
    .locals 2

    const/16 v0, 0x50

    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1, p1, p2, p3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->send([BII)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p0

    :catch_1
    move-exception p1

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw p1

    :catch_2
    move-exception p1

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result p2

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw p1
.end method
