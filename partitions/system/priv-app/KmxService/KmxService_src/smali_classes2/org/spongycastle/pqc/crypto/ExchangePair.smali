.class public Lorg/spongycastle/pqc/crypto/ExchangePair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final publicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field private final shared:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ExchangePair;->publicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ExchangePair;->shared:[B

    return-void
.end method


# virtual methods
.method public getPublicKey()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ExchangePair;->publicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    return-object p0
.end method

.method public getSharedValue()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ExchangePair;->shared:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method
