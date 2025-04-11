.class public Lcom/android/server/enterprise/dex/DexPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "DexPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/dex/DexPolicy;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DexPolicyService"

    if-nez p1, :cond_0

    const-string p0, "action is null!"

    .line 152
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 155
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, "dex exit "

    .line 160
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    const-string p0, "dex enter "

    .line 157
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    const-string p1, "ACTION_LOCKED_BOOT_COMPLETED"

    .line 163
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->isEthernetOnlyApplied(Lcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/dex/DexPolicy;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 165
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getAdminUidForEthernetOnly(Lcom/android/server/enterprise/storage/EdmStorageProvider;)I

    move-result v0

    invoke-direct {p2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$fputmContext_temp(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;)V

    .line 167
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$fgetmContext_temp(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mapplyEthernetOnly(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 169
    :cond_4
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/dex/DexPolicy;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 170
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mexitDexModeSetPackageState(Lcom/android/server/enterprise/dex/DexPolicy;)V

    .line 172
    :cond_5
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$sfgetisBlockerRegistered()Z

    move-result p1

    if-nez p1, :cond_6

    .line 173
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mregisterDexBlocker(Lcom/android/server/enterprise/dex/DexPolicy;)V

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35f22cb2 -> :sswitch_2
        0x8a75b96 -> :sswitch_1
        0x6c272afe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
