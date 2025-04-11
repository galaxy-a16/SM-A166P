.class public Lorg/spongycastle/openpgp/PGPOnePassSignatureList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/spongycastle/util/Iterable<",
        "Lorg/spongycastle/openpgp/PGPOnePassSignature;",
        ">;"
    }
.end annotation


# instance fields
.field sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPOnePassSignature;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/openpgp/PGPOnePassSignature;

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    const/4 p0, 0x0

    aput-object p1, v0, p0

    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/openpgp/PGPOnePassSignature;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lorg/spongycastle/openpgp/PGPOnePassSignature;

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    const/4 p0, 0x0

    array-length v1, p1

    invoke-static {p1, p0, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/spongycastle/openpgp/PGPOnePassSignature;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPOnePassSignature;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/spongycastle/util/Arrays$Iterator;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    invoke-direct {v0, p0}, Lorg/spongycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    array-length p0, p0

    return p0
.end method
