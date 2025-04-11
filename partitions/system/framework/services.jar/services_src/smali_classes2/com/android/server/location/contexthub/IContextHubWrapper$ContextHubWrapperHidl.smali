.class public abstract Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "IContextHubWrapper.java"


# instance fields
.field public mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

.field public final mHidlCallbackMap:Ljava/util/Map;

.field public mHub:Landroid/hardware/contexthub/V1_0/IContexthub;


# direct methods
.method public constructor <init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V
    .locals 1

    .line 879
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;-><init>()V

    const/4 v0, 0x0

    .line 816
    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    .line 818
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    .line 880
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    return-void
.end method


# virtual methods
.method public disableNanoapp(IJI)I
    .locals 0

    .line 919
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/contexthub/V1_0/IContexthub;->disableNanoApp(IJI)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result p0

    return p0
.end method

.method public enableNanoapp(IJI)I
    .locals 0

    .line 912
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/contexthub/V1_0/IContexthub;->enableNanoApp(IJI)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result p0

    return p0
.end method

.method public getPreloadedNanoappIds(I)[J
    .locals 0

    .line 0
    const/4 p0, 0x0

    new-array p0, p0, [J

    return-object p0
.end method

.method public loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
    .locals 0

    .line 897
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    move-result-object p2

    .line 898
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/contexthub/V1_0/IContexthub;->loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result p0

    return p0
.end method

.method public onBtMainSettingChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBtScanningSettingChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onWifiMainSettingChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onWifiScanningSettingChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public queryNanoapps(I)I
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 926
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthub;->queryApps(I)I

    move-result p0

    .line 925
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result p0

    return p0
.end method

.method public registerCallback(ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .locals 3

    .line 934
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget-object p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/contexthub/V1_0/IContexthubCallback;

    invoke-interface {p2, p1, p0}, Landroid/hardware/contexthub/V1_0/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    return-void
.end method

.method public registerExistingCallback(I)V
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;

    if-nez v0, :cond_0

    .line 942
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find existing callback for context hub with ID = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IContextHubWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 947
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0, p1, v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    return-void
.end method

.method public sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
    .locals 0

    .line 888
    invoke-static {p1, p3}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    move-result-object p1

    .line 889
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 890
    invoke-interface {p0, p2, p1}, Landroid/hardware/contexthub/V1_0/IContexthub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result p0

    .line 889
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result p0

    return p0
.end method

.method public setTestMode(Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public supportsBtSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public unloadNanoapp(IJI)I
    .locals 0

    .line 905
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/contexthub/V1_0/IContexthub;->unloadNanoApp(IJI)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result p0

    return p0
.end method
