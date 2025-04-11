.class public final Lcom/android/server/display/DisplayPowerController2$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController2.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController2;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController2;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController2$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController2;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] SettingsObserver: onChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmScreenBrightnessModeSettingName(Lcom/android/server/display/DisplayPowerController2;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mhandleBrightnessModeChange(Lcom/android/server/display/DisplayPowerController2;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController2;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController2;Z)V

    :goto_0
    return-void
.end method
