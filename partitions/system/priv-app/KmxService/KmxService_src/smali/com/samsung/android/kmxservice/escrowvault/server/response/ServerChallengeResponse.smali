.class public Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mChallenge:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "challenge"
    .end annotation
.end field

.field mHsmEncCredCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "hsmEncCredCert"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;->mChallenge:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;->mHsmEncCredCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;->mChallenge:Ljava/lang/String;

    return-object p0
.end method

.method public getHsmEncCredCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;->mHsmEncCredCert:Ljava/lang/String;

    return-object p0
.end method
