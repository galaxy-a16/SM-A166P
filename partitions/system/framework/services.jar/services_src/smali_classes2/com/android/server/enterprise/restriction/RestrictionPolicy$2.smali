.class public Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 501
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    .line 502
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 503
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "updateUsbMode failed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 506
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mupdateUSBMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p1, v4, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result p2

    invoke-static {p1, v4, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$msetStatusBarExpansionSystemUI(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)V

    .line 515
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p1, v3, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mupdateUsbStorageStatebyIntent(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Z)Z

    .line 517
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$misFirmwareChanged(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 518
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mmigrateDisallowNonMarketAppOnUserRestrictions(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 521
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mnotifyChanges(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    .line 523
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result p1

    if-nez p1, :cond_8

    .line 524
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mturnOffAirPlaneMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 526
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mupdateUSBMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 531
    :catch_1
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    const-string v1, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    .line 533
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 534
    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 536
    :cond_3
    :try_start_2
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    const-string p0, "Network Policy update failed"

    .line 538
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 540
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.user_handle"

    if-eqz v1, :cond_5

    .line 541
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent.ACTION_USER_SWITCHED occurred!! action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " userId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0, p2, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$misScreenCaptureEnabled(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/data/system/enterprise.conf"

    const-string/jumbo p2, "screenCaptureEnabled"

    .line 544
    invoke-static {p2, p0, p1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_5
    const-string v0, "android.intent.action.USER_ADDED"

    .line 546
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 547
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 548
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$monUserAdded(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto :goto_1

    :cond_6
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 549
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 550
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 551
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$monUserRemoved(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto :goto_1

    :cond_7
    const-string v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 552
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 553
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 554
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    :cond_8
    :goto_1
    return-void
.end method
