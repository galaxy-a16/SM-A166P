.class public Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAgentSakCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "agentSakCert"
    .end annotation
.end field

.field private mAgentVerificationCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "agentVerificationCert"
    .end annotation
.end field

.field private final mESalt:[B
    .annotation runtime Lr5/b;
        value = "eSalt"
    .end annotation
.end field

.field private mEVSW:[B
    .annotation runtime Lr5/b;
        value = "eVSW"
    .end annotation
.end field

.field private final mEVerifier:[B
    .annotation runtime Lr5/b;
        value = "eVerifier"
    .end annotation
.end field

.field private final mEVerifierEncKey:[B
    .annotation runtime Lr5/b;
        value = "eVerifierEncKey"
    .end annotation
.end field

.field private final mEVerifierIv:[B
    .annotation runtime Lr5/b;
        value = "eVerifierIv"
    .end annotation
.end field

.field private mSignEVSW:[B
    .annotation runtime Lr5/b;
        value = "signEVSW"
    .end annotation
.end field

.field private mSignVerifier:[B
    .annotation runtime Lr5/b;
        value = "signVerifier"
    .end annotation
.end field

.field private final mVerifierType:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "verifierType"
    .end annotation
.end field


# direct methods
.method public constructor <init>([B[B[B[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mESalt:[B

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mEVerifierIv:[B

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mEVerifier:[B

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mEVerifierEncKey:[B

    invoke-virtual {p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mVerifierType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgentSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mAgentSakCert:Ljava/lang/String;

    return-object p0
.end method

.method public getAgentVerificationCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mAgentVerificationCert:Ljava/lang/String;

    return-object p0
.end method

.method public getESalt()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mESalt:[B

    return-object p0
.end method

.method public getEVSW()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mEVSW:[B

    return-object p0
.end method

.method public getEVerifier()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mEVerifier:[B

    return-object p0
.end method

.method public getEVerifierEncKey()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mEVerifierEncKey:[B

    return-object p0
.end method

.method public getEVerifierIv()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mEVerifierIv:[B

    return-object p0
.end method

.method public getSignEVSW()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mSignEVSW:[B

    return-object p0
.end method

.method public getSignVerifier()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mSignVerifier:[B

    return-object p0
.end method

.method public getVerifierType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mVerifierType:Ljava/lang/String;

    return-object p0
.end method

.method public setAgentSakCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mAgentSakCert:Ljava/lang/String;

    return-void
.end method

.method public setAgentVerificationCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mAgentVerificationCert:Ljava/lang/String;

    return-void
.end method

.method public setEVSW([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mEVSW:[B

    return-void
.end method

.method public setSignEVSW([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mSignEVSW:[B

    return-void
.end method

.method public setSignVerifier([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->mSignVerifier:[B

    return-void
.end method
