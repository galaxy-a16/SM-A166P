.class public abstract Lcom/android/server/policy/SideKeyDoublePress;
.super Ljava/lang/Object;
.source "SideKeyDoublePress.java"


# static fields
.field public static mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;


# direct methods
.method public static getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;
    .locals 2

    sget-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->equalTargetAppName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "secureFolder/secureFolder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "torch/torch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "wakeBixby_openApps/wakeBixby_openApps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "samsungpay://simplepay/sidekey"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v0

    :pswitch_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_QUICK_SWITCH_PRIVATE_MODE:Z

    if-eqz v1, :cond_8

    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningSecureFolder;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningSecureFolder;-><init>(Ljava/lang/String;)V

    :cond_8
    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v0

    :pswitch_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TORCH:Z

    if-eqz v1, :cond_9

    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningTorch;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningTorch;-><init>(Ljava/lang/String;)V

    :cond_9
    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v0

    :pswitch_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_WAKE_UP_BIXBY_SIDE_KEY:Z

    if-eqz v1, :cond_a

    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;)V

    :cond_a
    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningQuickLaunchCamera;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningQuickLaunchCamera;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningSamsungPay;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningSamsungPay;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v0

    :pswitch_5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_ATT_TV_MODE:Z

    if-eqz v1, :cond_b

    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningTvMode;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningTvMode;-><init>(Ljava/lang/String;)V

    :cond_b
    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49b8cf78 -> :sswitch_5
        -0x2ed4269d -> :sswitch_4
        0x5a5f84 -> :sswitch_3
        0x5a741d0f -> :sswitch_2
        0x6a598029 -> :sswitch_1
        0x760519cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTargetAppName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/view/KeyEvent;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 v1, 0x8

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastIntentClone(II)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/server/policy/SideKeyDoublePress;->getTargetAppName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, p0, v0, p1, p2}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public static typeToBehavior(ILjava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const-string p0, "SideKeyDoublePress"

    const-string/jumbo p1, "type is not properly."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo p0, "samsungpay://simplepay/sidekey"

    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo p0, "secureFolder/secureFolder"

    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    return-object p0
.end method
