.class public Lorg/spongycastle/jce/spec/ElGamalGenParameterSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private primeSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/jce/spec/ElGamalGenParameterSpec;->primeSize:I

    return-void
.end method


# virtual methods
.method public getPrimeSize()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/jce/spec/ElGamalGenParameterSpec;->primeSize:I

    return p0
.end method
