.class Lorg/spongycastle/crypto/tls/DigestInputBuffer;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDigest(Lorg/spongycastle/crypto/Digest;)V
    .locals 2

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    iget p0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-interface {p1, v0, v1, p0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method
