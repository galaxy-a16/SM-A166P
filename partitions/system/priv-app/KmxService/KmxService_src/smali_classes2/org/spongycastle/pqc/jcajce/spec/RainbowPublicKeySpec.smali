.class public Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private coeffquadratic:[[S

.field private coeffscalar:[S

.field private coeffsingular:[[S

.field private docLength:I


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->docLength:I

    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->coeffquadratic:[[S

    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->coeffsingular:[[S

    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->coeffscalar:[S

    return-void
.end method


# virtual methods
.method public getCoeffQuadratic()[[S
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->coeffquadratic:[[S

    return-object p0
.end method

.method public getCoeffScalar()[S
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->coeffscalar:[S

    return-object p0
.end method

.method public getCoeffSingular()[[S
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->coeffsingular:[[S

    return-object p0
.end method

.method public getDocLength()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->docLength:I

    return p0
.end method
