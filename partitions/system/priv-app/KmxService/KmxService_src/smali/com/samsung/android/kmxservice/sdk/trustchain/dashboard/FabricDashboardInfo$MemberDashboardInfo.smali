.class public Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberDashboardInfo"
.end annotation


# instance fields
.field private final dashboardInfo:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "dashboardInfo"
    .end annotation
.end field

.field private final deviceType:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "deviceType"
    .end annotation
.end field

.field private final isSynced:Z
    .annotation runtime Lr5/b;
        value = "isSynced"
    .end annotation
.end field

.field private final memberId:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "memberId"
    .end annotation
.end field

.field private final modelCode:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "modelCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->memberId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->deviceType:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->modelCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->dashboardInfo:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->isSynced:Z

    return-void
.end method


# virtual methods
.method public getDashboardInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->dashboardInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->deviceType:Ljava/lang/String;

    return-object p0
.end method

.method public getIsSynced()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->isSynced:Z

    return p0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->memberId:Ljava/lang/String;

    return-object p0
.end method

.method public getModelCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->modelCode:Ljava/lang/String;

    return-object p0
.end method
