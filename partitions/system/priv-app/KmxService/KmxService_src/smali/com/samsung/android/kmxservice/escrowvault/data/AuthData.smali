.class public Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mExpireAt:J

.field private mIssuedAt:J

.field private mTargetResource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;->mAccessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;->mTargetResource:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;->mIssuedAt:J

    iput-wide p5, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;->mExpireAt:J

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiredAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;->mExpireAt:J

    return-wide v0
.end method

.method public getIssuedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;->mIssuedAt:J

    return-wide v0
.end method

.method public getTargetResource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;->mTargetResource:Ljava/lang/String;

    return-object p0
.end method
