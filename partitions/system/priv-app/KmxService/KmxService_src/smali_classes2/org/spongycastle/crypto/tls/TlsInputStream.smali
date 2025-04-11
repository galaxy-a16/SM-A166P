.class Lorg/spongycastle/crypto/tls/TlsInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private buf:[B

.field private handler:Lorg/spongycastle/crypto/tls/TlsProtocol;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsProtocol;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->buf:[B

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->applicationDataAvailable()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->close()V

    return-void
.end method

.method public read()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->buf:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->buf:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->readApplicationData([BII)I

    move-result p0

    return p0
.end method
