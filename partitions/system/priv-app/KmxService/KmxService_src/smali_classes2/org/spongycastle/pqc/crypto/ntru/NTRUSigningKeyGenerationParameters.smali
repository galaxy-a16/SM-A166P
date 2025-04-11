.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final APR2011_439:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final APR2011_439_PROD:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final APR2011_743:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final APR2011_743_PROD:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final BASIS_TYPE_STANDARD:I = 0x0

.field public static final BASIS_TYPE_TRANSPOSE:I = 0x1

.field public static final KEY_GEN_ALG_FLOAT:I = 0x1

.field public static final KEY_GEN_ALG_RESULTANT:I

.field public static final TEST157:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final TEST157_PROD:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;


# instance fields
.field public B:I

.field public N:I

.field public basisType:I

.field beta:D

.field public betaSq:D

.field bitsF:I

.field public d:I

.field public d1:I

.field public d2:I

.field public d3:I

.field public hashAlg:Lorg/spongycastle/crypto/Digest;

.field public keyGenAlg:I

.field keyNormBound:D

.field public keyNormBoundSq:D

.field normBound:D

.field public normBoundSq:D

.field public polyType:I

.field public primeCheck:Z

.field public q:I

.field public signFailTolerance:I

.field public sparse:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 50

    new-instance v16, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    const/16 v1, 0x1b7

    const/16 v2, 0x800

    const/16 v3, 0x92

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide v6, 0x3fc51eb851eb851fL    # 0.165

    const-wide v8, 0x407ea00000000000L    # 490.0

    const-wide v10, 0x4071800000000000L    # 280.0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v15, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v15}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    sput-object v16, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->APR2011_439:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object/from16 v17, v0

    const/16 v18, 0x1b7

    const/16 v19, 0x800

    const/16 v20, 0x9

    const/16 v21, 0x8

    const/16 v22, 0x5

    const/16 v23, 0x1

    const/16 v24, 0x1

    const-wide v25, 0x3fc51eb851eb851fL    # 0.165

    const-wide v27, 0x407ea00000000000L    # 490.0

    const-wide v29, 0x4071800000000000L    # 280.0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA256Digest;

    move-object/from16 v34, v1

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct/range {v17 .. v34}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->APR2011_439_PROD:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    const/16 v35, 0x2e7

    const/16 v36, 0x800

    const/16 v37, 0xf8

    const/16 v38, 0x1

    const/16 v39, 0x1

    const-wide v40, 0x3fc04189374bc6a8L    # 0.127

    const-wide v42, 0x4081800000000000L    # 560.0

    const-wide v44, 0x4076800000000000L    # 360.0

    const/16 v46, 0x1

    const/16 v47, 0x0

    const/16 v48, 0x0

    new-instance v49, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct/range {v49 .. v49}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    move-object/from16 v34, v0

    invoke-direct/range {v34 .. v49}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->APR2011_743:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object v1, v0

    const/16 v2, 0x2e7

    const/16 v3, 0x800

    const/16 v4, 0xb

    const/16 v5, 0xb

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-wide v9, 0x3fc04189374bc6a8L    # 0.127

    const-wide v11, 0x4081800000000000L    # 560.0

    const-wide v13, 0x4076800000000000L    # 360.0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v19, Lorg/spongycastle/crypto/digests/SHA512Digest;

    move-object/from16 v18, v19

    invoke-direct/range {v19 .. v19}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct/range {v1 .. v18}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->APR2011_743_PROD:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    const/16 v21, 0x9d

    const/16 v22, 0x100

    const/16 v23, 0x1d

    const/16 v25, 0x1

    const-wide v26, 0x3fd851eb851eb852L    # 0.38

    const-wide/high16 v28, 0x4069000000000000L    # 200.0

    const-wide/high16 v30, 0x4054000000000000L    # 80.0

    const/16 v32, 0x0

    const/16 v34, 0x0

    new-instance v35, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v35}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->TEST157:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object v1, v0

    const/16 v2, 0x9d

    const/16 v3, 0x100

    const/4 v4, 0x5

    const/4 v5, 0x5

    const/16 v6, 0x8

    const-wide v9, 0x3fd851eb851eb852L    # 0.38

    const-wide/high16 v11, 0x4069000000000000L    # 200.0

    const-wide/high16 v13, 0x4054000000000000L    # 80.0

    const/4 v15, 0x0

    new-instance v19, Lorg/spongycastle/crypto/digests/SHA256Digest;

    move-object/from16 v18, v19

    invoke-direct/range {v19 .. v19}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct/range {v1 .. v18}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->TEST157_PROD:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    return-void
.end method

.method public constructor <init>(IIIIIDDDZZILorg/spongycastle/crypto/Digest;)V
    .locals 3

    .line 1
    move-object v0, p0

    move v1, p1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, v2, p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    const/16 v2, 0x64

    iput v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    const/4 v2, 0x6

    iput v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    move v1, p2

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    move v1, p3

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    move v1, p4

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    move v1, p5

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    move-wide v1, p6

    iput-wide v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    move-wide v1, p8

    iput-wide v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    move-wide v1, p10

    iput-wide v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    move v1, p12

    iput-boolean v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    move/from16 v1, p14

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->init()V

    return-void
.end method

.method public constructor <init>(IIIIIIIDDDZZILorg/spongycastle/crypto/Digest;)V
    .locals 3

    .line 2
    move-object v0, p0

    move v1, p1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, v2, p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    const/16 v2, 0x64

    iput v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    const/4 v2, 0x6

    iput v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    move v1, p2

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    move v1, p3

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    move v1, p4

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    move v1, p5

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    move v1, p6

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    move v1, p7

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    move-wide v1, p8

    iput-wide v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    move-wide v1, p10

    iput-wide v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    move-wide v1, p12

    iput-wide v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    move/from16 v1, p14

    iput-boolean v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    move/from16 v1, p16

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    move-object/from16 v1, p17

    iput-object v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x1

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 3
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    const/16 v0, 0x64

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    const/4 v0, 0x6

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SHA-512"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {p1}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    :goto_0
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    goto :goto_1

    :cond_0
    const-string v1, "SHA-256"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {p1}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    mul-double/2addr v0, v0

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->betaSq:D

    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    mul-double/2addr v0, v0

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBoundSq:D

    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    mul-double/2addr v0, v0

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBoundSq:D

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->clone()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;
    .locals 35

    .line 2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-nez v1, :cond_0

    new-instance v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v3, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    iget v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    iget v5, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    iget v6, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    iget v7, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    iget-wide v8, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    iget-wide v10, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    iget-wide v12, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    iget-boolean v14, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    iget-boolean v15, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    iget v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    move/from16 v16, v2

    move-object v2, v1

    move-object/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    return-object v1

    :cond_0
    new-instance v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object/from16 v17, v1

    iget v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    move/from16 v18, v2

    iget v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    move/from16 v19, v2

    iget v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    move/from16 v20, v2

    iget v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    move/from16 v21, v2

    iget v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    move/from16 v22, v2

    iget v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    move/from16 v23, v2

    iget v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    move/from16 v24, v2

    iget-wide v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    move-wide/from16 v25, v2

    iget-wide v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    move-wide/from16 v27, v2

    iget-wide v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    move-wide/from16 v29, v2

    iget-boolean v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    move/from16 v31, v2

    iget-boolean v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    move/from16 v32, v2

    iget v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    move/from16 v33, v2

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v34, v0

    invoke-direct/range {v17 .. v34}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    iget v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    iget v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    iget v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->betaSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->betaSq:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    iget v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    iget v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    iget v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    iget v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    iget v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-nez v2, :cond_d

    iget-object v2, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-eqz v2, :cond_e

    return v1

    :cond_d
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    iget v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    return v1

    :cond_10
    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBoundSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBoundSq:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    return v1

    :cond_11
    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    return v1

    :cond_12
    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBoundSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBoundSq:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    return v1

    :cond_13
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    iget v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-eq v2, v3, :cond_14

    return v1

    :cond_14
    iget-boolean v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    iget-boolean v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    iget v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    if-eq v2, v3, :cond_16

    return v1

    :cond_16
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    iget v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    if-eq v2, v3, :cond_17

    return v1

    :cond_17
    iget-boolean p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    iget-boolean p1, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    if-eq p0, p1, :cond_18

    return v1

    :cond_18
    return v0
.end method

.method public getSigningParameters()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;
    .locals 11

    new-instance v10, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    iget-wide v5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    iget-wide v7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;-><init>(IIIIDDLorg/spongycastle/crypto/Digest;)V

    return-object v10
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    add-int/2addr v0, v2

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->betaSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    add-int/2addr v0, v2

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBoundSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBoundSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SignatureParameters(N="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " polyType=SIMPLE d="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " polyType=PRODUCT d1="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " d2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " d3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " B="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " basisType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " beta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " normBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " keyNormBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " prime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " sparse="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " keyGenAlg="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " hashAlg="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-wide v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-wide v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method
