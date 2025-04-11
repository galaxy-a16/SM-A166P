.class Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DigestOutputStream"
.end annotation


# instance fields
.field private dig:Lorg/spongycastle/crypto/Digest;

.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;->this$0:Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 2
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method
