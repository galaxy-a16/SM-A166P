.class public Lorg/spongycastle/jce/spec/ElGamalKeySpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;


# direct methods
.method public constructor <init>(Lorg/spongycastle/jce/spec/ElGamalParameterSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/jce/spec/ElGamalKeySpec;->spec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    return-void
.end method


# virtual methods
.method public getParams()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/jce/spec/ElGamalKeySpec;->spec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    return-object p0
.end method
