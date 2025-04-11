.class public Lcom/android/server/power/batterysaver/BatterySaverPolicy;
.super Landroid/database/ContentObserver;
.source "BatterySaverPolicy.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# static fields
.field public static final DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field public static final DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field static final KEY_ADJUST_BRIGHTNESS_FACTOR:Ljava/lang/String; = "adjust_brightness_factor"

.field static final KEY_ADVERTISE_IS_ENABLED:Ljava/lang/String; = "advertise_is_enabled"

.field static final KEY_DEFER_FULL_BACKUP:Ljava/lang/String; = "defer_full_backup"

.field static final KEY_DEFER_KEYVALUE_BACKUP:Ljava/lang/String; = "defer_keyvalue_backup"

.field static final KEY_DISABLE_ANIMATION:Ljava/lang/String; = "disable_animation"

.field static final KEY_DISABLE_AOD:Ljava/lang/String; = "disable_aod"

.field static final KEY_DISABLE_LAUNCH_BOOST:Ljava/lang/String; = "disable_launch_boost"

.field static final KEY_DISABLE_OPTIONAL_SENSORS:Ljava/lang/String; = "disable_optional_sensors"

.field static final KEY_DISABLE_VIBRATION:Ljava/lang/String; = "disable_vibration"

.field static final KEY_ENABLE_BRIGHTNESS_ADJUSTMENT:Ljava/lang/String; = "enable_brightness_adjustment"

.field static final KEY_ENABLE_DATASAVER:Ljava/lang/String; = "enable_datasaver"

.field static final KEY_ENABLE_FIREWALL:Ljava/lang/String; = "enable_firewall"

.field static final KEY_ENABLE_NIGHT_MODE:Ljava/lang/String; = "enable_night_mode"

.field static final KEY_ENABLE_QUICK_DOZE:Ljava/lang/String; = "enable_quick_doze"

.field static final KEY_FORCE_ALL_APPS_STANDBY:Ljava/lang/String; = "force_all_apps_standby"

.field static final KEY_FORCE_BACKGROUND_CHECK:Ljava/lang/String; = "force_background_check"

.field static final KEY_LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field static final KEY_SOUNDTRIGGER_MODE:Ljava/lang/String; = "soundtrigger_mode"

.field static final OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;


# instance fields
.field final mAccessibilityEnabled:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

.field public mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field final mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

.field public final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field public mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field public mDeviceSpecificSettings:Ljava/lang/String;

.field public mDeviceSpecificSettingsSource:Ljava/lang/String;

.field public mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field public mEventLogKeys:Ljava/lang/String;

.field public mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field public final mHandler:Landroid/os/Handler;

.field public mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

.field public final mListeners:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mOnProjectionStateChangedListener:Landroid/app/UiModeManager$OnProjectionStateChangedListener;

.field public mPolicyLevel:I

.field public mSettings:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$SYi6v3v_v8zrPqe4dlgBF-AYQss(Lcom/android/server/power/batterysaver/BatterySaverPolicy;[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->lambda$maybeNotifyListenersOfPolicyChange$2([Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r34cVGAbjMlsIMTWgP29moHCpm8(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->lambda$systemReady$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zQCfQWxPeMWqP42HlVtqgf42Dto(Lcom/android/server/power/batterysaver/BatterySaverPolicy;ILjava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->lambda$new$0(ILjava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeNotifyListenersOfPolicyChange(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->maybeNotifyListenersOfPolicyChange()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePolicyDependenciesLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 39

    .line 148
    new-instance v19, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object/from16 v0, v19

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZZII)V

    sput-object v19, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 169
    sput-object v19, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 171
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object/from16 v20, v0

    const v21, 0x3f666666    # 0.9f

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x1

    const/16 v36, 0x1

    const/16 v37, 0x1

    const/16 v38, 0x1

    invoke-direct/range {v20 .. v38}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZZII)V

    sput-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .locals 3

    .line 282
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 222
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    const-string v1, "accessibility"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean-IA;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 226
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    const-string v1, "automotiveProjection"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean-IA;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 230
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 234
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 238
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 242
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 249
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 271
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mOnProjectionStateChangedListener:Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mListeners:Ljava/util/List;

    .line 283
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 284
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mHandler:Landroid/os/Handler;

    .line 285
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 286
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    .line 287
    iput-object p3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    return-void
.end method

.method private synthetic lambda$maybeNotifyListenersOfPolicyChange$2([Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .locals 3

    .line 358
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 359
    invoke-interface {v2, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;->onBatterySaverPolicyChanged(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(ILjava/util/Set;)V
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->update(Z)V

    return-void
.end method

.method private synthetic lambda$systemReady$1(Z)V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->update(Z)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1176
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1178
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1179
    :try_start_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1180
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-virtual {v1, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1182
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Battery saver policy (*NOTE* they only apply when battery saver is ON):"

    .line 1183
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Settings: battery_saver_constants"

    .line 1185
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "DeviceConfig: battery_saver"

    .line 1193
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1195
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    invoke-virtual {v1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    .line 1196
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "N/A"

    .line 1197
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1199
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1200
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ": "

    .line 1201
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1202
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1205
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAccessibilityEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    invoke-static {v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->-$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutomotiveProjectionActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    invoke-static {v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->-$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPolicyLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "default full"

    .line 1211
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    const-string v1, "current full"

    .line 1212
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    const-string v1, "default adaptive"

    .line 1213
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    const-string v1, "current adaptive"

    .line 1214
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    const-string v1, "effective"

    .line 1215
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    .line 1217
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1218
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpPolicyLocked(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V
    .locals 1

    .line 1222
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1223
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Policy \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "advertise_is_enabled="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disable_vibration="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disable_animation="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1228
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "defer_full_backup="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "defer_keyvalue_backup="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1230
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enable_firewall="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enable_datasaver="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disable_launch_boost="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enable_brightness_adjustment="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "adjust_brightness_factor="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "location_mode="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1236
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "force_all_apps_standby="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "force_background_check="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disable_optional_sensors="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disable_aod="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "soundtrigger_mode="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enable_quick_doze="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enable_night_mode="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getBatterySaverPolicy(I)Landroid/os/PowerSaveState;
    .locals 4

    .line 961
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 962
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p0

    .line 963
    new-instance v1, Landroid/os/PowerSaveState$Builder;

    invoke-direct {v1}, Landroid/os/PowerSaveState$Builder;-><init>()V

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 964
    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1020
    :pswitch_0
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    goto/16 :goto_0

    .line 1008
    :pswitch_1
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 1009
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1017
    :pswitch_2
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 1018
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1014
    :pswitch_3
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 1015
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1011
    :pswitch_4
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 1012
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1005
    :pswitch_5
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 1006
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1002
    :pswitch_6
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 1003
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 989
    :pswitch_7
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 990
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 992
    :pswitch_8
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    if-eqz p1, :cond_1

    :cond_0
    move v2, v3

    .line 995
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    .line 996
    invoke-virtual {p1, p0}, Landroid/os/PowerSaveState$Builder;->setSoundTriggerMode(I)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 997
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 985
    :pswitch_9
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    .line 986
    invoke-virtual {p1, p0}, Landroid/os/PowerSaveState$Builder;->setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 987
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 982
    :pswitch_a
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 983
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 979
    :pswitch_b
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 980
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 976
    :pswitch_c
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 977
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 973
    :pswitch_d
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 974
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 999
    :pswitch_e
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 1000
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 967
    :pswitch_f
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    if-eqz p1, :cond_3

    :cond_2
    move v2, v3

    .line 969
    :cond_3
    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 970
    invoke-virtual {p1, p0}, Landroid/os/PowerSaveState$Builder;->setLocationMode(I)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 971
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1020
    :goto_0
    invoke-virtual {v1, p0}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p0

    .line 1021
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1023
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 0

    .line 1136
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object p0
.end method

.method public final getCurrentRawPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 2

    .line 1140
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1147
    sget-object p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object p0

    .line 1142
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object p0

    .line 1144
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object p0
.end method

.method public getDeviceSpecificConfigResId()I
    .locals 0

    .line 0
    const p0, 0x10402cd

    return p0
.end method

.method public getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPolicyLocked(I)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1066
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object p0

    .line 1069
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPolicyLocked: incorrect policy level provided - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1064
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object p0

    .line 1062
    :cond_2
    sget-object p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object p0
.end method

.method public invalidatePowerSaveModeCaches()V
    .locals 0

    .line 339
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    return-void
.end method

.method public isLaunchBoostDisabled()Z
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1159
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybeNotifyListenersOfPolicyChange()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    if-nez v1, :cond_0

    .line 351
    monitor-exit v0

    return-void

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    .line 355
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 355
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final maybeUpdateDefaultFullPolicy(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z
    .locals 4

    .line 1082
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 1086
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 1087
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v1, v2

    .line 1089
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    :cond_1
    return v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 366
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->refreshSettings()V

    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 9

    const-string v0, "battery_saver"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 373
    invoke-static {v0, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    .line 379
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "_adaptive"

    .line 384
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v4, :cond_0

    const-string v4, ""

    const-string v5, ""

    .line 386
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    const-string v7, "_adaptive"

    sget-object v8, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->-$$Nest$smfromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-nez v3, :cond_0

    .line 391
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    sget-object v7, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-static {v3, v5, v6, v2, v7}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->-$$Nest$smfromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v3

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 397
    invoke-virtual {p0, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->maybeUpdateDefaultFullPolicy(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    move-result p1

    or-int/2addr p1, v1

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    if-eqz v4, :cond_6

    .line 400
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v2, v4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 401
    iput-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 405
    iput-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 406
    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    move v1, v3

    :cond_5
    or-int/2addr p1, v1

    .line 409
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    .line 410
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_7

    .line 413
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->maybeNotifyListenersOfPolicyChange()V

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    .line 410
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final refreshSettings()V
    .locals 6

    .line 418
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "battery_saver_constants"

    .line 420
    invoke-virtual {p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "battery_saver_device_specific_constants"

    .line 425
    invoke-virtual {p0, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery_saver_device_specific_constants"

    .line 427
    iput-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    .line 430
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 432
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getDeviceSpecificConfigResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(overlay)"

    .line 433
    iput-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    :cond_1
    const-string v3, "BatterySaverPolicy"

    .line 437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] refreshSettings: deviceSpecificSetting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 443
    monitor-exit v0

    return-void

    .line 445
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->maybeNotifyListenersOfPolicyChange()V

    return-void

    :catchall_0
    move-exception p0

    .line 445
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "BatterySaverPolicy"

    const-string/jumbo p1, "setAdaptivePolicy given null policy"

    .line 1115
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1118
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1122
    :cond_1
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 1123
    iget p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1124
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    return v1

    :cond_2
    return v0
.end method

.method public setFullPolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "BatterySaverPolicy"

    const-string/jumbo p1, "setFullPolicy given null policy"

    .line 1097
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1100
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1104
    :cond_1
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 1105
    iget p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1106
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public setPolicyLevel(I)Z
    .locals 4

    .line 1032
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_0
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 1034
    monitor-exit v0

    return v2

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1039
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iput-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    if-eq p1, v3, :cond_2

    const-string p0, "BatterySaverPolicy"

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPolicyLevel invalid level given: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    monitor-exit v0

    return v2

    .line 1045
    :cond_2
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    .line 1052
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 1053
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public shouldAdvertiseIsEnabled()Z
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public systemReady()V
    .locals 5

    const-string v0, "BatterySaverPolicy"

    .line 294
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->wtfIfLockHeld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_device_specific_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 301
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 303
    new-instance v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 304
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->-$$Nest$minitialize(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;Z)V

    .line 306
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 307
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 308
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mOnProjectionStateChangedListener:Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    const/4 v4, 0x1

    .line 307
    invoke-virtual {v0, v4, v1, v3}, Landroid/app/UiModeManager;->addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V

    .line 309
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 310
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getActiveProjectionTypes()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v2

    .line 309
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->-$$Nest$minitialize(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;Z)V

    .line 312
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 313
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "battery_saver"

    .line 312
    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    new-array v0, v2, [Ljava/lang/String;

    .line 315
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v4, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public toEventLogString()Ljava/lang/String;
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1171
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 454
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 457
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    .line 458
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 462
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    .line 463
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 471
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->-$$Nest$smfromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p1

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->maybeUpdateDefaultFullPolicy(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    move-result p1

    .line 474
    iget-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLastDeviceConfigProperties:Landroid/provider/DeviceConfig$Properties;

    const-string v0, "_adaptive"

    sget-object v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    const-string v2, ""

    invoke-static {v2, v2, p2, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->-$$Nest$smfromSettings(Ljava/lang/String;Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 476
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 477
    invoke-virtual {v0, p2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    move p1, v1

    .line 482
    :cond_1
    iget-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 484
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    return p1
.end method

.method public final updatePolicyDependenciesLocked()V
    .locals 23

    move-object/from16 v0, p0

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentRawPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->invalidatePowerSaveModeCaches()V

    .line 495
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    invoke-static {v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->-$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    iget v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    :goto_0
    move/from16 v21, v3

    .line 504
    new-instance v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget v5, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    iget-boolean v6, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    iget-boolean v7, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    iget-boolean v8, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    iget-boolean v9, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    iget-boolean v10, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    iget-boolean v11, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    iget-boolean v12, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    const/4 v13, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 514
    invoke-static {v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->-$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v13

    :goto_1
    iget-boolean v14, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    iget-boolean v15, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    move/from16 v16, v15

    iget-boolean v15, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 519
    invoke-static {v4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->-$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    move/from16 v17, v13

    :goto_2
    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    move/from16 v18, v4

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    move/from16 v19, v4

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    move/from16 v20, v4

    iget v1, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    move/from16 v22, v1

    move-object v4, v2

    move v13, v3

    move v1, v15

    move/from16 v15, v16

    move/from16 v16, v1

    invoke-direct/range {v4 .. v22}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZZII)V

    iput-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    if-eqz v2, :cond_3

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_3
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    if-eqz v2, :cond_4

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_4
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_5
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    if-eqz v2, :cond_6

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_6
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    if-eqz v2, :cond_7

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_7
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    if-eqz v2, :cond_8

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_8
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    if-eqz v2, :cond_9

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :cond_9
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    if-eqz v2, :cond_a

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_a
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    if-eqz v2, :cond_b

    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_b
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    if-eqz v2, :cond_c

    const-string v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_c
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    if-eqz v2, :cond_d

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_d
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "o"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_e
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "q"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_f
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget v2, v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    return-void
.end method
