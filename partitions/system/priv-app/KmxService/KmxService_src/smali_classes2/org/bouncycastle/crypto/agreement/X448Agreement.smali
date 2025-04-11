.class public final Lorg/bouncycastle/crypto/agreement/X448Agreement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/RawAgreement;


# instance fields
.field private privateKey:Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/agreement/X448Agreement;->privateKey:Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    check-cast p1, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->generateSecret(Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;[BI)V

    return-void
.end method

.method public getAgreementSize()I
    .locals 0

    const/16 p0, 0x38

    return p0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/X448Agreement;->privateKey:Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    return-void
.end method
