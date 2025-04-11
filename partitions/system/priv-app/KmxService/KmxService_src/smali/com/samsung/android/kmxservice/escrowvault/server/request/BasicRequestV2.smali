.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mDeviceId:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "deviceId"
    .end annotation
.end field

.field mKmxId:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "kmxId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;->mKmxId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;->mDeviceId:Ljava/lang/String;

    return-void
.end method
