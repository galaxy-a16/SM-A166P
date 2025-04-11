.class public Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private challenge:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "challenge"
    .end annotation
.end field

.field private challengeId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "challengeId"
    .end annotation
.end field

.field private expireAt:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "expireAt"
    .end annotation
.end field

.field private issuedAt:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "issuedAt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "challenge"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;->challenge:Ljava/lang/String;

    return-object p0
.end method

.method public getChallengeId()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "challengeId"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;->challengeId:Ljava/lang/String;

    return-object p0
.end method

.method public getExpireAt()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "expireAt"
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;->expireAt:J

    return-wide v0
.end method

.method public getIssuedAt()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "issuedAt"
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;->issuedAt:J

    return-wide v0
.end method

.method public isExpired()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;->expireAt:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;->challengeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;->challenge:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;->isExpired()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
