.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;
.super Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;
.source "SourceFile"


# instance fields
.field private gmssPublicKey:[B


# direct methods
.method public constructor <init>([BLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;->gmssPublicKey:[B

    return-void
.end method


# virtual methods
.method public getPublicKey()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;->gmssPublicKey:[B

    return-object p0
.end method
