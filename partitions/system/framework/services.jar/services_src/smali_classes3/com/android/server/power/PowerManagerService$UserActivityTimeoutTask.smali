.class public Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 5625
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 5630
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5631
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNoUserActivityIntent(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 5632
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmNoUserActivitySent(Lcom/android/server/power/PowerManagerService;Z)V

    :cond_0
    return-void
.end method
