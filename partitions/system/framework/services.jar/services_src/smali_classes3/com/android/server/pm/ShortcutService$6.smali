.class public Lcom/android/server/pm/ShortcutService$6;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    .line 3958
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 3961
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    const-string p0, "ShortcutService"

    .line 3963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent broadcast does not contain user handle: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3967
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3971
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v1

    .line 3973
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3974
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3979
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4025
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    .line 3981
    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3983
    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3984
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    const-string p1, "ShortcutService"

    .line 3987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent broadcast does not contain package name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4025
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :cond_3
    :try_start_4
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    .line 3991
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 3993
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, -0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :sswitch_1
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v5, v9

    goto :goto_2

    :sswitch_2
    const-string v5, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v5, v7

    goto :goto_2

    :sswitch_3
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v5, v8

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v10

    :goto_2
    if-eqz v5, :cond_9

    if-eq v5, v9, :cond_8

    if-eq v5, v8, :cond_6

    if-eq v5, v7, :cond_5

    goto :goto_3

    .line 4019
    :cond_5
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageDataCleared(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_3

    :cond_6
    const-string v0, "EM_PKG_HADNLER_ID"

    .line 4008
    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v10, :cond_7

    const-string p1, "ShortcutService"

    .line 4010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip PACKAGE_CHANGED intent from Emergency mode: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", pkg: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4015
    :cond_7
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageChanged(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_3

    :cond_8
    if-nez v4, :cond_b

    .line 4003
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageRemoved(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_a

    .line 3996
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageUpdateFinished(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_3

    .line 3998
    :cond_a
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageAdded(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 3981
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 4023
    :try_start_7
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v0, "Exception in mPackageMonitor.onReceive"

    invoke-virtual {p2, v0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4025
    :cond_b
    :goto_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :goto_4
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4026
    throw p1

    :sswitch_data_0
    .sparse-switch
        0xa480416 -> :sswitch_3
        0xff13fb5 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch
.end method
