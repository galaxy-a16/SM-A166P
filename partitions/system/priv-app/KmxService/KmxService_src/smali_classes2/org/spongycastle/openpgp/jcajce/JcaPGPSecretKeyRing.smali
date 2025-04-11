.class public Lorg/spongycastle/openpgp/jcajce/JcaPGPSecretKeyRing;
.super Lorg/spongycastle/openpgp/PGPSecretKeyRing;
.source "SourceFile"


# static fields
.field private static fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    sput-object v0, Lorg/spongycastle/openpgp/jcajce/JcaPGPSecretKeyRing;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/spongycastle/openpgp/jcajce/JcaPGPSecretKeyRing;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    sget-object v0, Lorg/spongycastle/openpgp/jcajce/JcaPGPSecretKeyRing;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>([BLorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method
