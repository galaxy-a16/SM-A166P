.class public Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mgetPackageName(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v2

    if-eqz v0, :cond_8

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "ApplicationPolicy"

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v3

    const-string v6, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v10, v9, v0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Lcom/samsung/android/knox/application/ManagedAppInfo;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v10, "applicationUninstallationCount"

    invoke-static {v9, v8, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mupdateCount(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_0

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v9, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misSystemApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v10, 0x2

    invoke-static {v9, v0, v8, v10, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$msetApplicationPkgNameControlState(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/high16 v10, 0x1000000

    invoke-static {v9, v0, v8, v10, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$msetApplicationPkgNameControlState(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z

    const-string v8, "App removed, clear masks"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez v6, :cond_7

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mreconcileRuntimePermissionsOnUninstallation(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misSystemApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p2, v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mreconcileRuntimePermissionsOnInstallation(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v7, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v8, v7, v0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Lcom/samsung/android/knox/application/ManagedAppInfo;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v8, "applicationInstallationCount"

    invoke-static {v7, v6, v0, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mupdateCount(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    const-string v6, "App install count incremented"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misSystemApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mupdateSystemAppDisableState(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V

    :cond_6
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p2, v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mreconcileRuntimePermissionsOnInstallation(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    :cond_7
    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p0, v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mgetProvidersFromPackage(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mrefreshWidgetStatus(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method
