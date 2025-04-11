.class public Lcom/android/server/desktopmode/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# static fields
.field public static final DEFAULT_VALUES:Ljava/util/Map;

.field public static final KEYS_TO_MIGRATE:Ljava/util/Map;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public final mListeners:Ljava/util/List;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/desktopmode/SettingsHelper;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/server/desktopmode/SettingsHelper;)Landroid/content/ContentResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetToDefaultIfNoSettings(Lcom/android/server/desktopmode/SettingsHelper;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/SettingsHelper;->setToDefaultIfNoSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/SettingsHelper;->KEYS_TO_MIGRATE:Ljava/util/Map;

    const-string v1, "hdmi"

    const-string v2, "hdmi_auto_enter"

    .line 58
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "keyboard"

    const-string/jumbo v2, "keyboard_dex"

    .line 59
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "keyboard_b"

    const-string/jumbo v2, "keyboard_backup"

    .line 60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "timeout"

    const-string/jumbo v2, "timeout_dex"

    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "timeout_b"

    const-string/jumbo v2, "timeout_backup"

    .line 62
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "developer"

    const-string/jumbo v2, "launch_policy_developer_enabled"

    .line 63
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/SettingsHelper;->DEFAULT_VALUES:Ljava/util/Map;

    const-string v1, "flow_pointer_is_on_dex"

    const-string v2, "false"

    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flow_pointer_from_where_dex"

    const-string/jumbo v2, "right"

    .line 69
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "spen_mode"

    const-string/jumbo v2, "mouse"

    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "spen_input_change_support"

    const-string/jumbo v2, "true"

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "touch_keyboard"

    .line 72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/Injector;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/android/server/desktopmode/SettingsHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/SettingsHelper$1;-><init>(Lcom/android/server/desktopmode/SettingsHelper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 113
    iput-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 115
    iput-object p3, p0, Lcom/android/server/desktopmode/SettingsHelper;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 116
    invoke-interface {p3, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 117
    iput-object p4, p0, Lcom/android/server/desktopmode/SettingsHelper;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 119
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUri()Landroid/net/Uri;

    move-result-object p3

    new-instance p4, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    .line 121
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p4, p0, v0}, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;-><init>(Lcom/android/server/desktopmode/SettingsHelper;Landroid/os/Handler;)V

    const/4 p0, -0x1

    const/4 p2, 0x1

    .line 118
    invoke-virtual {p1, p3, p2, p4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public backupOrRestoreSettings(ZLcom/android/server/desktopmode/State;)V
    .locals 1

    .line 126
    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSettings(ZLcom/android/server/desktopmode/State;I)V

    return-void
.end method

.method public backupOrRestoreSettings(ZLcom/android/server/desktopmode/State;I)V
    .locals 7

    .line 131
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    const-string v3, ", userId="

    const-string v4, "backupOrRestoreSettings(), enter="

    if-ne p1, v0, :cond_2

    .line 133
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Already "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "backed up!"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "restored!"

    .line 134
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 137
    :cond_2
    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    .line 138
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", displayType="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v5, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p1, :cond_4

    if-nez v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_5

    const/16 v2, 0x66

    if-ne v0, v2, :cond_6

    .line 145
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/android/server/desktopmode/SettingsHelper;->setScreensaver(ZI)V

    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/SettingsHelper;->setVirtualKeyboard(ZLcom/android/server/desktopmode/State;I)V

    .line 147
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/SettingsHelper;->setTouchKeyboard(ZLcom/android/server/desktopmode/State;I)V

    .line 149
    :cond_6
    invoke-virtual {p0, p1, p3}, Lcom/android/server/desktopmode/SettingsHelper;->setPsmSpeedLimit(ZI)V

    .line 150
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, p1, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    return-void
.end method

.method public backupOrRestoreSuperFastCharging(ZI)V
    .locals 7

    .line 456
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    const-string/jumbo v3, "super_fast_charging_backup"

    if-eqz p1, :cond_1

    .line 459
    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper;->getSuperFastChargingValue(I)I

    move-result p1

    .line 460
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupOrRestoreFastCharging(), current normalSfcValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_3

    .line 464
    iget-object v4, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3, p1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 466
    invoke-virtual {p0, v2, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setSuperFastChargingValue(II)V

    .line 467
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string p2, "backupOrRestoreFastCharging(), Enabling super fast charging"

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 472
    invoke-static {p1, v3, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_3

    .line 476
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backupOrRestoreFastCharging(), Restoring backed up value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setSuperFastChargingValue(II)V

    .line 480
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v3, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 484
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    return-void
.end method

.method public clearSettingsByLauncherDataCleared(Lcom/android/server/desktopmode/State;I)V
    .locals 5

    .line 154
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string v1, "clearSettingsByLauncherDataCleared()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->clearSettingsAsUser(Landroid/content/ContentResolver;I)V

    .line 156
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 157
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    .line 158
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 161
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "set Dex default on virtual keyboard in standalone"

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    invoke-virtual {p0, v3, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setNormalModeVirtualKeyboard(II)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_5

    .line 164
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set the setting for touchkeyboard, isDexStationCoverAttached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexStationConnectedWithFlipCover()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 169
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexStationConnectedWithFlipCover()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string/jumbo v4, "touch_keyboard"

    .line 168
    invoke-static {v0, v4, v1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 170
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexStationConnectedWithFlipCover()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 171
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "touch_keyboard_backup"

    invoke-static {p1, v0, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 175
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/desktopmode/SettingsHelper;->setToDefaultIfNoSettings()V

    .line 178
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "display_chooser_do_not_show_again"

    invoke-static {p0, p1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V
    .locals 0

    .line 498
    invoke-static {p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->dump(Landroid/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V

    return-void
.end method

.method public final getPsmValue(Ljava/lang/String;)I
    .locals 1

    .line 385
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x2c

    .line 387
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v0, 0x0

    .line 390
    :try_start_0
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 392
    sget-object p1, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string v0, "NumberFormatException in getPsmValue"

    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getSuperFastChargingValue(I)I
    .locals 2

    .line 488
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "super_fast_charging"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final isLowPowerMode()Z
    .locals 2

    .line 417
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "low_power"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setCurrentUserId(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->applyGlobalSettings(Landroid/content/ContentResolver;I)V

    .line 211
    :cond_0
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setCurrentUserId(I)V

    .line 212
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/server/desktopmode/SettingsHelper;->startMigration()V

    :cond_1
    return-void
.end method

.method public setDefaultSettingsInRetailMode(Lcom/android/server/desktopmode/State;I)V
    .locals 2

    .line 182
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setDefaultSettingsInRetailMode()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    .line 184
    iget p1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 186
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "keyboard_dex"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 189
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "primary_mouse_button_option"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method

.method public final setNormalModeVirtualKeyboard(II)V
    .locals 1

    .line 315
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final setPsmSpeedLimit(ZI)V
    .locals 7

    .line 353
    invoke-virtual {p0}, Lcom/android/server/desktopmode/SettingsHelper;->isLowPowerMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "restricted_device_performance"

    const-string/jumbo v3, "speed_limit_backup"

    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/SettingsHelper;->getPsmValue(Ljava/lang/String;)I

    move-result p1

    .line 357
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPsmSpeedLimit(), current value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p1, v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v3, p1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 363
    invoke-virtual {p0, v2, v1}, Lcom/android/server/desktopmode/SettingsHelper;->setPsmValue(Ljava/lang/String;I)V

    .line 364
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setPsmSpeedLimit(), Disabling speed limit"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 369
    invoke-static {p1, v3, v1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 373
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPsmSpeedLimit(), Restoring backed up value="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/android/server/desktopmode/SettingsHelper;->setPsmValue(Ljava/lang/String;I)V

    .line 377
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v3, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setPsmValue(Ljava/lang/String;I)V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2c

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 406
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 408
    sget-object v1, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string v2, "NumberFormatException in setPsmValue"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    .line 412
    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 413
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPsmValue = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final setScreensaver(ZI)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "screensaver_backup"

    if-eqz p1, :cond_1

    .line 423
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screensaver_enabled"

    invoke-static {p1, v3, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 425
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenSaver(), current value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p1, v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2, p1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 431
    invoke-virtual {p0, v1, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setScreensaverValue(II)V

    .line 432
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setScreenSaver(), Disabling screen saver"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v2, v1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 440
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreensaver(), Restoring backed up value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setScreensaverValue(II)V

    .line 444
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setScreensaverValue(II)V
    .locals 1

    .line 451
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "screensaver_enabled"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final setSuperFastChargingValue(II)V
    .locals 1

    .line 493
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "super_fast_charging"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final setToDefaultIfNoSettings()V
    .locals 4

    .line 233
    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->DEFAULT_VALUES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 234
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    iget-object v3, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->contains(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    iget-object v3, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setTouchKeyboard(ZLcom/android/server/desktopmode/State;I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "touch_keyboard"

    const-string/jumbo v3, "touch_keyboard_backup"

    if-eqz p1, :cond_1

    .line 321
    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->isDexStationConnectedWithFlipCover()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 323
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v2, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p1

    .line 325
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchKeyboard(), currentValue="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    .line 328
    iget-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p2, v3, p1, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 330
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v2, v1, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 332
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setTouchKeyboard(), Enabling to show on dex display"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v3, v1, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 341
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchKeyboard(), Restoring backed up value="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_2
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v2, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 346
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v3, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setVirtualKeyboard(ZLcom/android/server/desktopmode/State;I)V
    .locals 4

    const/4 v0, 0x1

    const-string/jumbo v1, "keyboard_backup"

    if-eqz p1, :cond_1

    .line 278
    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->isDexOnPcConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 280
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "show_ime_with_hard_keyboard"

    invoke-static {p1, p2, v0, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 282
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVirtualKeyboard(), current normalModeValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_3

    .line 286
    iget-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p2, v1, p1, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 288
    invoke-virtual {p0, v0, p3}, Lcom/android/server/desktopmode/SettingsHelper;->setNormalModeVirtualKeyboard(II)V

    .line 289
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setVirtualKeyboard(), Enabling to show onScreenKeyboard"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 296
    invoke-static {p1, v1, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_3

    .line 300
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVirtualKeyboard(), Restoring backed up value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    .line 302
    invoke-virtual {p0, p1, p3}, Lcom/android/server/desktopmode/SettingsHelper;->setNormalModeVirtualKeyboard(II)V

    .line 304
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final startMigration()V
    .locals 5

    .line 218
    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->KEYS_TO_MIGRATE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.service.dex."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 221
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    iget-object v3, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v1, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 227
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 203
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
