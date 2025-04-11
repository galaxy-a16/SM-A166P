.class public Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mExpireAt:Ljava/lang/Long;
    .annotation runtime Lr5/b;
        value = "expireAt"
    .end annotation
.end field

.field mIssuedAt:Ljava/lang/Long;
    .annotation runtime Lr5/b;
        value = "issuedAt"
    .end annotation
.end field

.field mJwtToken:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "jwtToken"
    .end annotation
.end field

.field mKnoxMatrixId:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "knoxMatrixId"
    .end annotation
.end field

.field mTargetResource:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "targetResource"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->mJwtToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->mTargetResource:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->mIssuedAt:Ljava/lang/Long;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->mExpireAt:Ljava/lang/Long;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->mKnoxMatrixId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExpireAt()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->mExpireAt:Ljava/lang/Long;

    return-object p0
.end method

.method public getIssuedAt()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->mIssuedAt:Ljava/lang/Long;

    return-object p0
.end method

.method public getJwtToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->mJwtToken:Ljava/lang/String;

    return-object p0
.end method

.method public getKnoxMatrixId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->mKnoxMatrixId:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetResource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->mTargetResource:Ljava/lang/String;

    return-object p0
.end method
