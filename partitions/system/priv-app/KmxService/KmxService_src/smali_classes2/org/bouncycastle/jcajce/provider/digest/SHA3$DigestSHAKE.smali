.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestSHAKE;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestSHAKE"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/bouncycastle/crypto/Xof;I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public engineDigest()[B
    .locals 3

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    new-array v1, v0, [B

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast p0, Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v1
.end method
