.class public Lcom/android/server/am/ActivityManagerService$17;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 10374
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "Shutting down activity manager..."

    const-string p2, "ActivityManager"

    .line 10377
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10378
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->shutdown(I)Z

    const-string p0, "Shutdown complete, restarting!"

    .line 10379
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10380
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    const/16 p0, 0xa

    .line 10381
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
