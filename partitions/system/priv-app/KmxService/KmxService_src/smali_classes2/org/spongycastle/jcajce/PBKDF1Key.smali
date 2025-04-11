.class public Lorg/spongycastle/jcajce/PBKDF1Key;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/jcajce/PBKDFKey;


# instance fields
.field private final converter:Lorg/spongycastle/crypto/CharToByteConverter;

.field private final password:[C


# direct methods
.method public constructor <init>([CLorg/spongycastle/crypto/CharToByteConverter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->password:[C

    iput-object p2, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->converter:Lorg/spongycastle/crypto/CharToByteConverter;

    const/4 p0, 0x0

    array-length p2, p1

    invoke-static {p1, p0, v0, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "PBKDF1"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->converter:Lorg/spongycastle/crypto/CharToByteConverter;

    iget-object p0, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->password:[C

    invoke-interface {v0, p0}, Lorg/spongycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->converter:Lorg/spongycastle/crypto/CharToByteConverter;

    invoke-interface {p0}, Lorg/spongycastle/crypto/CharToByteConverter;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPassword()[C
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->password:[C

    return-object p0
.end method
