.class public Lcom/android/server/desktopmode/DefaultBlocker;
.super Ljava/lang/Object;
.source "DefaultBlocker.java"


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Landroid/hardware/display/DisplayManager;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;-><init>(Lcom/android/server/desktopmode/DefaultBlocker;I)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    .line 66
    iput-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mActivityManager:Landroid/app/ActivityManager;

    .line 68
    iput-object p3, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "REASON_NEW_DEX"

    return-object p0

    :pswitch_1
    const-string p0, "REASON_SMART_VIEW"

    return-object p0

    :pswitch_2
    const-string p0, "REASON_KIDS_MODE"

    return-object p0

    :pswitch_3
    const-string p0, "REASON_UNAVAILABLE_USER"

    return-object p0

    :pswitch_4
    const-string p0, "REASON_SAFE_MODE"

    return-object p0

    :pswitch_5
    const-string p0, "REASON_PRO_KIOSK_MODE"

    return-object p0

    :pswitch_6
    const-string p0, "REASON_LOCK_TASK_MODE"

    return-object p0

    :pswitch_7
    const-string p0, "REASON_NOT_BLOCKED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBlocker(Lcom/android/server/desktopmode/State;)Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isProKioskMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x2

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x3

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DefaultBlocker;->isUnavailableUser(Lcom/android/server/desktopmode/State;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x4

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isKidsLauncherMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 81
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x5

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isSmartViewConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 83
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x6

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isNewDeXEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 85
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x7

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    .line 91
    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isKidsLauncherMode()Z
    .locals 2

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 111
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v0, "com.sec.android.app.kidshome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLeboCastConnectionEnabled()Z
    .locals 2

    .line 127
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "lelink_cast_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final isLockTaskMode()Z
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNewDeXEnabled()Z
    .locals 2

    .line 131
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dex_mode"

    const-string/jumbo v1, "new"

    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 134
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isProKioskMode()Z
    .locals 0

    .line 99
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSmartViewConnected()Z
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isLeboCastConnectionEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final isUnavailableUser(Lcom/android/server/desktopmode/State;)Z
    .locals 0

    .line 104
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
