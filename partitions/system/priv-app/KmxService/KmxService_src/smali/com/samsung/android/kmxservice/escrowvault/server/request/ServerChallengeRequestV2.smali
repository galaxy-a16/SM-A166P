.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequestV2;
.super Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;
.source "SourceFile"


# instance fields
.field mOperationType:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "operationType"
    .end annotation
.end field

.field mServiceName:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "serviceName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequestV2;->mServiceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequestV2;->mOperationType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOperationType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequestV2;->mOperationType:Ljava/lang/String;

    return-object p0
.end method
