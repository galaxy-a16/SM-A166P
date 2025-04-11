.class public Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mChallenge:Ljava/lang/String;

.field private mChallengeId:Ljava/lang/String;

.field private mExpireAt:J

.field private mIssuedAt:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;->mChallengeId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;->mChallenge:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;->mIssuedAt:J

    iput-wide p5, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;->mExpireAt:J

    return-void
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;->mChallenge:Ljava/lang/String;

    return-object p0
.end method

.method public getChallengeId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;->mChallengeId:Ljava/lang/String;

    return-object p0
.end method

.method public getExpireAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;->mExpireAt:J

    return-wide v0
.end method

.method public getIssuedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;->mIssuedAt:J

    return-wide v0
.end method
