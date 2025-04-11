.class public Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateService()V
    .locals 0

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public deactivateService()V
    .locals 0

    return-void
.end method

.method public destroyService()V
    .locals 0

    return-void
.end method

.method public detectFabricAbnormality()V
    .locals 0

    return-void
.end method

.method public detectMemberAbnormality(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public detectTrustedFabricAbnormality(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getDashboardInfoSelf()V
    .locals 0

    return-void
.end method

.method public getFabricDashboardInfo()V
    .locals 0

    return-void
.end method

.method public getMemberDashboardInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getSTMemberSecurityStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getSTMembersSecurityStatus()V
    .locals 0

    return-void
.end method

.method public handlePushEvents(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public readDataDashboard()V
    .locals 0

    return-void
.end method

.method public registerCallback(ILcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V
    .locals 0

    return-void
.end method

.method public signedInSamsungAccount()V
    .locals 0

    return-void
.end method

.method public syncTrustChain()V
    .locals 0

    return-void
.end method

.method public unRegisterCallback(I)V
    .locals 0

    return-void
.end method

.method public writeDataDashboard(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
