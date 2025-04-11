.class public Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;
.super Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.source "IContextHubWrapper.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_2/IContexthub$getHubs_1_2Callback;


# instance fields
.field public final mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

.field public mHubInfo:Landroid/util/Pair;


# direct methods
.method public constructor <init>(Landroid/hardware/contexthub/V1_2/IContexthub;)V
    .locals 3

    .line 1068
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V

    .line 1064
    new-instance v0, Landroid/util/Pair;

    .line 1065
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHubInfo:Landroid/util/Pair;

    .line 1069
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    return-void
.end method


# virtual methods
.method public getHubs()Landroid/util/Pair;
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    invoke-interface {v0, p0}, Landroid/hardware/contexthub/V1_2/IContexthub;->getHubs_1_2(Landroid/hardware/contexthub/V1_2/IContexthub$getHubs_1_2Callback;)V

    .line 1083
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHubInfo:Landroid/util/Pair;

    return-object p0
.end method

.method public onAirplaneModeSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 1113
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->sendSettingChanged(BB)V

    return-void
.end method

.method public onLocationSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1103
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->sendSettingChanged(BB)V

    return-void
.end method

.method public onMicrophoneSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 1118
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->sendSettingChanged(BB)V

    return-void
.end method

.method public onValues(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 1076
    new-instance v2, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v2, v1}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1078
    :cond_0
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHubInfo:Landroid/util/Pair;

    return-void
.end method

.method public onWifiSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1108
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->sendSettingChanged(BB)V

    return-void
.end method

.method public registerCallback(ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .locals 3

    .line 1123
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    iget-object p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/contexthub/V1_2/IContexthubCallback;

    invoke-interface {p2, p1, p0}, Landroid/hardware/contexthub/V1_2/IContexthub;->registerCallback_1_2(ILandroid/hardware/contexthub/V1_2/IContexthubCallback;)I

    return-void
.end method

.method public final sendSettingChanged(BB)V
    .locals 0

    .line 1130
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    invoke-interface {p0, p1, p2}, Landroid/hardware/contexthub/V1_2/IContexthub;->onSettingChanged_1_2(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "IContextHubWrapper"

    const-string p2, "Failed to send setting change to Contexthub"

    .line 1132
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public supportsAirplaneModeSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public supportsLocationSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public supportsMicrophoneSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public supportsWifiSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
