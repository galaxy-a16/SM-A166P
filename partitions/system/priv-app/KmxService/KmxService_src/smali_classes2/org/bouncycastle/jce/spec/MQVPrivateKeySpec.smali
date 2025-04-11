.class public Lorg/bouncycastle/jce/spec/MQVPrivateKeySpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Lorg/bouncycastle/jce/interfaces/MQVPrivateKey;


# instance fields
.field private ephemeralPrivateKey:Ljava/security/PrivateKey;

.field private ephemeralPublicKey:Ljava/security/PublicKey;

.field private staticPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jce/spec/MQVPrivateKeySpec;-><init>(Ljava/security/PrivateKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->staticPrivateKey:Ljava/security/PrivateKey;

    iput-object p2, p0, Lorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->ephemeralPrivateKey:Ljava/security/PrivateKey;

    iput-object p3, p0, Lorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->ephemeralPublicKey:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "ECMQV"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEphemeralPrivateKey()Ljava/security/PrivateKey;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->ephemeralPrivateKey:Ljava/security/PrivateKey;

    return-object p0
.end method

.method public getEphemeralPublicKey()Ljava/security/PublicKey;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->ephemeralPublicKey:Ljava/security/PublicKey;

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStaticPrivateKey()Ljava/security/PrivateKey;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->staticPrivateKey:Ljava/security/PrivateKey;

    return-object p0
.end method
