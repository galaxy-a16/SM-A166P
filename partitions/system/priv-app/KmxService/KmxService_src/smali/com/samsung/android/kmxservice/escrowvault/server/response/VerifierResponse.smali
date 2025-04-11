.class public Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mDeviceId:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "deviceId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;->mDeviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method
