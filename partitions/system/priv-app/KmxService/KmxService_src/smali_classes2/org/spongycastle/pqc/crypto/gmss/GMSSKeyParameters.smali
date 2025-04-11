.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "SourceFile"


# instance fields
.field private params:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;


# direct methods
.method public constructor <init>(ZLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;->params:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;->params:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    return-object p0
.end method
