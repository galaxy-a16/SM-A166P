.class public Lcom/android/server/GestureLauncherService$2;
.super Landroid/database/ContentObserver;
.source "GestureLauncherService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method public constructor <init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 791
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->-$$Nest$fgetmUserId(Lcom/android/server/GestureLauncherService;)I

    move-result p1

    if-ne p3, p1, :cond_0

    .line 792
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->-$$Nest$mupdateCameraRegistered(Lcom/android/server/GestureLauncherService;)V

    .line 793
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-virtual {p1}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 794
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-virtual {p1}, Lcom/android/server/GestureLauncherService;->updateEmergencyGestureEnabled()V

    .line 795
    iget-object p0, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGesturePowerButtonCooldownPeriodMs()V

    :cond_0
    return-void
.end method
