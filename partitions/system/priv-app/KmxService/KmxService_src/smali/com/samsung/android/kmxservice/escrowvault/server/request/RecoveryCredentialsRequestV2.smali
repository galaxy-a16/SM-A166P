.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialsRequestV2;
.super Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;
.source "SourceFile"


# instance fields
.field mChallenge:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "challenge"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialsRequestV2;->mChallenge:Ljava/lang/String;

    return-void
.end method
