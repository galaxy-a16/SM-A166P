.class public Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;
.super Ljava/lang/Object;
.source "MultiControlManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mListener:Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;

.field public final mPid:I

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mListener:Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;

    invoke-interface {p2}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mPid:I

    iput p4, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mUid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    invoke-static {}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiControlAppDeathChecker - binderDied"

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->resetMultiControlValue()V

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public final resetMultiControlValue()V
    .locals 3

    const-string/jumbo v0, "sendBroadcast - ACTION_MULTI_CONTROL_DIED"

    invoke-static {}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in resetMultiControlValue"

    invoke-static {v1, v2}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/multicontrol/MultiControlManagerService;->forceHideCursor(Z)V

    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/multicontrol/MultiControlManagerService;->setMultiControlOutOfFocus(Z)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-static {v1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$fgetmInputFilter(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/view/IInputFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {v1}, Lcom/android/server/multicontrol/MultiControlManagerService;->resetInputFilter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.inputshare.action.ACTION_MULTI_CONTROL_DIED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.inputshare"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-static {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$fgetmContext(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/content/Context;

    move-result-object p0

    const-string v2, "com.samsung.android.permission.MULTI_CONTROL_RECEIVER_PERMISSION"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    invoke-static {}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiControlAppDeathChecker - unlinkToDeath"

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
