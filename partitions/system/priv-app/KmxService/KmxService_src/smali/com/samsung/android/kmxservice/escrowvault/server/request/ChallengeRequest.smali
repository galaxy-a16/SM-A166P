.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mId:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "id"
    .end annotation
.end field

.field private mTargetResource:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "targetResource"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;->mTargetResource:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetResource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;->mTargetResource:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;->mId:Ljava/lang/String;

    return-void
.end method

.method public setTargetResource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;->mTargetResource:Ljava/lang/String;

    return-void
.end method
