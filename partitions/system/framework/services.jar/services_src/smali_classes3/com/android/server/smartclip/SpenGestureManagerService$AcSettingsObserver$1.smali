.class public Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;
.super Landroid/database/ContentObserver;
.source "SpenGestureManagerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;Landroid/os/Handler;)V
    .locals 0

    .line 1276
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;->this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1279
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string/jumbo v1, "pen_digitizer_enabled"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 1280
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;->this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$monSpenDigitizerOnOffChanged(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    return-void
.end method
