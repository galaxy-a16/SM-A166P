.class public abstract Lcom/android/server/desktopmode/ModeChanger;
.super Ljava/lang/Object;
.source "ModeChanger.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mIsLockTaskModeEnabledAndSecured:Z

.field public mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

.field public mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field public final mResolver:Landroid/content/ContentResolver;

.field public mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public final mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

.field public mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public mUiManager:Lcom/android/server/desktopmode/UiManager;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/ModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mIsLockTaskModeEnabledAndSecured:Z

    .line 86
    iput-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 88
    iput-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 89
    iput-object p3, p0, Lcom/android/server/desktopmode/ModeChanger;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 90
    iput-object p4, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 91
    iput-object p5, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 92
    iput-object p6, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 93
    iput-object p7, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 94
    iput-object p8, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 95
    iput-object p9, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 96
    iput-object p10, p0, Lcom/android/server/desktopmode/ModeChanger;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 97
    iput-object p11, p0, Lcom/android/server/desktopmode/ModeChanger;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 98
    iput-object p12, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 99
    iput-object p13, p0, Lcom/android/server/desktopmode/ModeChanger;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method


# virtual methods
.method public backupLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/State;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 143
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "lock_to_app_exit_locked"

    .line 145
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p1

    .line 144
    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mIsLockTaskModeEnabledAndSecured:Z

    return-void
.end method

.method public bringTaskToForeground(III)V
    .locals 3

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/ModeChanger;->canTaskBeBroughtToForeground(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bringTaskToForeground(), taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetWindowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {p3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->bringTaskToForeground(III)V

    :cond_1
    return-void
.end method

.method public final canTaskBeBroughtToForeground(I)Z
    .locals 6

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 199
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->isAutoOpenLastAppAllowed()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    const-string v4, "auto_open_last_app"

    if-eqz v3, :cond_5

    .line 205
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    const-string v5, "canTaskBeBroughtToForeground(), auto_open_last_app is forcibly disabled by Knox Custom SDK"

    invoke-static {v3, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2
    iget-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 212
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getRealActivityForTaskId(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz v1, :cond_4

    .line 214
    invoke-virtual {v1, p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->stayInForeground(Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 215
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 216
    sget-object p1, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canTaskBeBroughtToForeground(), componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not allowed."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :cond_4
    return v2

    .line 223
    :cond_5
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_7

    .line 225
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    const-string p1, "canTaskBeBroughtToForeground(), auto_open_last_app is not enabled"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v0

    :cond_7
    return v2
.end method

.method public cancelKillProcessWhenExit()V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->cancelKillProcessWhenDexExit()V

    return-void
.end method

.method public clearSettingsBadgeCount()V
    .locals 3

    .line 111
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    const-string v1, "clearSettingsBadgeCount()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string v2, "badge_for_dex"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public varargs dismissDialog([I)V
    .locals 4

    .line 105
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 106
    iget-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v3, v2}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forceKillProcessWhenExit()V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->killProcessWhenDexExit()V

    return-void
.end method

.method public hasPackageTask(ILjava/lang/String;I)Z
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->hasPackageTask(ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isKnoxLauncherMode(Lcom/android/server/desktopmode/State;)Z
    .locals 2

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 158
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    .line 159
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p1

    .line 158
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 160
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string p1, "com.android.internal.app"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 162
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "isKnoxLauncherMode()=true"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isLockTaskModeEnabledAndSecured()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mIsLockTaskModeEnabledAndSecured:Z

    return p0
.end method

.method public saveDisplayType(I)V
    .locals 1

    .line 246
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "display_type"

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public abstract setDesktopModeState(II)V
.end method

.method public setDesktopModeToSurfaceFlinger(Z)V
    .locals 3

    const-string p0, "SurfaceFlinger"

    .line 120
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 123
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 125
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x44f

    const/4 v2, 0x0

    .line 126
    invoke-interface {p0, p1, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 130
    sget-object p1, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    const-string v0, "Failed to set desktop mode for SF"

    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public showDexMirroringTipsNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 235
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_DUAL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "dex_mirroring_tips_notification_shown"

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    const-string v1, "Show DeX mirroring Tips Notification."

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 240
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const-string v0, "0008"

    const-string v1, "DEXX_0004"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/server/desktopmode/Utils;->showTipsNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public switchKnoxToFolderMode(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/ModeChanger;->isKnoxLauncherMode(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 150
    new-instance p0, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "android.intent.extra.user_handle"

    .line 151
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    .line 152
    invoke-static {p1, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method
