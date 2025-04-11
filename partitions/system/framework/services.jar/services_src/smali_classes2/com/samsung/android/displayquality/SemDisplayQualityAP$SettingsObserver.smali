.class public final Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SemDisplayQualityAP.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    sget-object p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-object p1, p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mBrightnessModeLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-object v0, p2, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, v0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->isBrightnessModeAuto(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mIsBrightnessModeAuto:Z

    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-boolean p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mIsBrightnessModeAuto:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleAutoBrightnessModeOn()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleAutoBrightnessModeOff()V

    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    sget-object p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->SCREEN_MODE_SETTING_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-virtual {p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->getScreenModeSetting()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenModeChanged(I)V

    :cond_2
    :goto_1
    return-void
.end method
