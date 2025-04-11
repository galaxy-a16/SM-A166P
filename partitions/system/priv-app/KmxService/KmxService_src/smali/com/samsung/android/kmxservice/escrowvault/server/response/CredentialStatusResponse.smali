.class public Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialStatusResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mServiceName:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "serviceName"
    .end annotation
.end field

.field mStatus:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialStatusResponse;->mServiceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialStatusResponse;->mStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialStatusResponse;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialStatusResponse;->mStatus:Ljava/lang/String;

    return-object p0
.end method
