.class public Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "DualDarProvisioningHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

.field public final synthetic val$errorCode:[I

.field public final synthetic val$finished:[Z

.field public final synthetic val$mutex:Ljava/lang/Object;

.field public final synthetic val$success:[Z


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DualDarProvisioningHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DualDAR Managed Profile Started Service onReceived is called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->-$$Nest$fgetmContext(Lcom/android/server/devicepolicy/DualDarProvisioningHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->-$$Nest$fgetmContext(Lcom/android/server/devicepolicy/DualDarProvisioningHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/DualDarProvisioningHelper;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "com.android.dualdar.started.provisioning_success"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$success:[Z

    aput-boolean v0, p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$success:[Z

    aput-boolean v1, p1, v1

    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$errorCode:[I

    const-string v2, "ERROR_CODE"

    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    aput p2, p1, v1

    :goto_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$finished:[Z

    aput-boolean v0, p2, v1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
