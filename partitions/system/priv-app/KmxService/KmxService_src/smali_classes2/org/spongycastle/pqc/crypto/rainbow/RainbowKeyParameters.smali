.class public Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "SourceFile"


# instance fields
.field private docLength:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;->docLength:I

    return-void
.end method


# virtual methods
.method public getDocLength()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;->docLength:I

    return p0
.end method
