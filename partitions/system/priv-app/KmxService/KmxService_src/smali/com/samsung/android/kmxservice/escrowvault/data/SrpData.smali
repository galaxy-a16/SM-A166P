.class public Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mScKey:Ljava/security/Key;

.field private mVerifierInfo:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

.field private mWKey:[B


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->mVerifierInfo:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->mVerifierInfo:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->mScKey:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/security/Key;[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->mScKey:Ljava/security/Key;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->mWKey:[B

    return-void
.end method


# virtual methods
.method public getScKey()Ljava/security/Key;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->mScKey:Ljava/security/Key;

    return-object p0
.end method

.method public getVerifierInfo()Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->mVerifierInfo:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    return-object p0
.end method

.method public getWKey()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->mWKey:[B

    return-object p0
.end method
