.class public Lcom/android/server/desktopmode/EmergencyModeBlocker;
.super Ljava/lang/Object;
.source "EmergencyModeBlocker.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mBlockerRegistered:Z

.field public final mContext:Landroid/content/Context;

.field public mEmergencyModeEnabledInSettings:Z

.field public mEnabledInBroadcast:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public mLimitAppsAndHomeScreenEnabledInSettings:Z

.field public final mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mMpsmEnabledInSettings:Z

.field public final mSettingListener:Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$g0NCFQKIsOXZJYC9NsgNH1dA2s4(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->updateBlockerRegistration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmEmergencyModeEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLimitAppsAndHomeScreenEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMpsmEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmEmergencyModeEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnabledInBroadcast(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLimitAppsAndHomeScreenEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMpsmEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$misEmergencyModeEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isEmergencyModeEnabledInSettings()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misLimitAppsAndHomeScreenEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isLimitAppsAndHomeScreenEnabledInSettings()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misMpsmEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isMpsmEnabledInSettings()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mscheduleUpdateBlockerRegistration(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleUpdateBlockerRegistration(Lcom/android/server/desktopmode/EmergencyModeBlocker;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/android/server/desktopmode/Injector;)V
    .locals 7

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    .line 85
    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 87
    iput-object p4, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 88
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    .line 89
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isEmergencyModeEnabledInSettings()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isMpsmEnabledInSettings()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isLimitAppsAndHomeScreenEnabledInSettings()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    .line 92
    new-instance p2, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;

    invoke-direct {p2, p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    iput-object p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mSettingListener:Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;

    .line 93
    new-instance v2, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;

    const/4 p4, 0x0

    invoke-direct {v2, p0, p4}, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener-IA;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string p4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v4, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p4, v1, v0, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p4, v1, v0, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p4, "minimal_battery_use"

    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p1, p4, v0, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    iput-object p3, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 105
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration()V

    return-void
.end method


# virtual methods
.method public final isEmergencyModeEnabledInSettings()Z
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 135
    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string v4, "emergency_mode"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    return v5
.end method

.method public final isLimitAppsAndHomeScreenEnabledInSettings()Z
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 151
    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string/jumbo v4, "minimal_battery_use"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    return v5
.end method

.method public final isMpsmEnabledInSettings()Z
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 143
    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string/jumbo v4, "ultra_powersaving_mode"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    return v5
.end method

.method public onBlocked()Ljava/lang/String;
    .locals 2

    .line 164
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    const v0, 0x1040436

    .line 166
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x1040440

    .line 165
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    if-eqz v1, :cond_1

    const p0, 0x1040438

    goto :goto_0

    .line 168
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    if-eqz p0, :cond_2

    const p0, 0x1040433

    goto :goto_0

    :cond_2
    const p0, 0x1040441

    .line 167
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final scheduleUpdateBlockerRegistration()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V

    return-void
.end method

.method public final scheduleUpdateBlockerRegistration(I)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public shouldBlockDesktopMode()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final updateBlockerRegistration()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->shouldBlockDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    .line 121
    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 122
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, v0}, Lcom/android/server/desktopmode/IStateManager;->setEmergencyModeEnabled(Z)V

    goto :goto_0

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    .line 127
    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 128
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, v0}, Lcom/android/server/desktopmode/IStateManager;->setEmergencyModeEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
