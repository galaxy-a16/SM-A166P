.class public Lorg/spongycastle/openpgp/jcajce/JcaPGPSecretKeyRingCollection;
.super Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPSecretKeyRingCollection;-><init>(Ljava/io/InputStream;)V

    return-void
.end method
