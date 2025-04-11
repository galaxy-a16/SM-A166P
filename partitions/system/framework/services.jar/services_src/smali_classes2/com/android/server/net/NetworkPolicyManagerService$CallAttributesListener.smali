.class public Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;
.super Landroid/telephony/TelephonyCallback;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallAttributesListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 7227
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public onCallStatesChanged(Ljava/util/List;)V
    .locals 5

    .line 7233
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p1

    const-string v0, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v1, ""

    const/4 v2, 0x0

    .line 7234
    invoke-virtual {p1, v2, v0, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "VZW-"

    .line 7236
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string v0, "ATT"

    .line 7237
    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$misNaGsm(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string v0, "TMO"

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$misNaGsm(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7239
    :cond_1
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result p1

    .line 7240
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "activevideo"

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    .line 7241
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v4, "epdg"

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmHasEpdgCall(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const-string v1, "NetworkPolicy"

    .line 7243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallStatesChanged - hasVideoCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasActiveVideoCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mHasEpdgCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmHasEpdgCall(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7246
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmIsVideoCall(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v1

    if-eq v1, p1, :cond_3

    if-eqz v0, :cond_2

    .line 7248
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmIsVideoCall(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const-string p1, "NetworkPolicy"

    const-string v0, "Video call start."

    .line 7249
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7250
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7251
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 7252
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    if-nez p1, :cond_3

    .line 7254
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmIsVideoCall(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 7255
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmVideoCallLimitAlreadySent(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 7256
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmVideoCallWarningAlreadySent(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const-string p1, "NetworkPolicy"

    const-string v0, "Video call end."

    .line 7257
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7258
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7259
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 7260
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 7261
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 7262
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 7263
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
