.class public Lorg/spongycastle/jce/spec/ElGamalPrivateKeySpec;
.super Lorg/spongycastle/jce/spec/ElGamalKeySpec;
.source "SourceFile"


# instance fields
.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/jce/spec/ElGamalParameterSpec;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/spongycastle/jce/spec/ElGamalKeySpec;-><init>(Lorg/spongycastle/jce/spec/ElGamalParameterSpec;)V

    iput-object p1, p0, Lorg/spongycastle/jce/spec/ElGamalPrivateKeySpec;->x:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getX()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/jce/spec/ElGamalPrivateKeySpec;->x:Ljava/math/BigInteger;

    return-object p0
.end method
