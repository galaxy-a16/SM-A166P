.class public Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mChallenge:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "challenge"
    .end annotation
.end field

.field mChallengeId:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "challengeId"
    .end annotation
.end field

.field mExpireAt:J
    .annotation runtime Lr5/b;
        value = "expireAt"
    .end annotation
.end field

.field mIssuedAt:J
    .annotation runtime Lr5/b;
        value = "issuedAt"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->mChallengeId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->mChallenge:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->mIssuedAt:J

    iput-wide p5, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->mExpireAt:J

    return-void
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->mChallenge:Ljava/lang/String;

    return-object p0
.end method

.method public getChallengeId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->mChallengeId:Ljava/lang/String;

    return-object p0
.end method

.method public getExpireAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->mExpireAt:J

    return-wide v0
.end method

.method public getIssuedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->mIssuedAt:J

    return-wide v0
.end method
