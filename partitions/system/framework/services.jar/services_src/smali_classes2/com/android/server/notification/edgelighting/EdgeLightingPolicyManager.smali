.class public Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"


# static fields
.field public static final DEBUG:Z

.field public static final DESKTOP_SETTINGS_URI:Landroid/net/Uri;

.field public static final EMERGENCY_MODE_ENABLED:Z

.field public static final TAG:Ljava/lang/String; = "EdgeLightingPolicyManager"


# instance fields
.field public mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

.field public mContext:Landroid/content/Context;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public final mDesktopSettingsObserver:Landroid/database/ContentObserver;

.field public mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mDisableNotificationAlerts:Z

.field public final mDisableRecords:Ljava/util/ArrayList;

.field public final mDisabledPackages:Landroid/util/SparseArray;

.field public mHandler:Landroid/os/Handler;

.field public final mHeadsUpObserver:Landroid/database/ContentObserver;

.field public mIsTouchpadEnabled:Z

.field public mNm:Landroid/app/INotificationManager;

.field public final mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

.field public final mNotificationMap:Ljava/util/HashMap;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPolicyType:I

.field public mPolicyVersion:J

.field public mPriorityPolicy:Ljava/util/ArrayList;

.field public mResumedComponent:Landroid/content/ComponentName;

.field public mResumedComponentTime:J

.field public mRinging:Z

.field public mStatusBarDisabled1:I

.field public mSuppressed:I

.field public mUseHeadsUp:Z

.field public mUserId:I

.field public mVrMode:Z

.field public final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field public mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisableNotificationAlerts(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseHeadsUp(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsTouchpadEnabled(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mIsTouchpadEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUseHeadsUp(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVrMode(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDesktopSettingsValue(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 65
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 71
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    .line 72
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 76
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    const-wide/16 v1, 0x0

    .line 86
    iput-wide v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    .line 107
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 111
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup-IA;)V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 115
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    .line 117
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    .line 119
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    .line 121
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 123
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    .line 125
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    .line 127
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    .line 131
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 141
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$2;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$2;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    .line 168
    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V

    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 231
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "desktopmode"

    .line 233
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 235
    new-instance p1, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {p1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 236
    new-instance p1, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {p1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    const/4 p1, 0x1

    .line 238
    invoke-virtual {v0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 239
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "heads_up_notifications_enabled"

    .line 240
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 239
    invoke-virtual {v3, v4, p1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 242
    invoke-virtual {v1, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, p1, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo p1, "notification"

    .line 245
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 244
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    const-string/jumbo p0, "vrmanager"

    .line 246
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 249
    :try_start_0
    invoke-interface {p0, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 252
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register VR mode state listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static isEmptyText(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "tickerText"

    const/4 v2, 0x0

    .line 753
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    return v3

    :cond_1
    const-string/jumbo v1, "titleText"

    .line 756
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    const-string/jumbo v1, "text"

    .line 759
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    const-string/jumbo v1, "subText"

    .line 762
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v3

    :cond_4
    return v0
.end method


# virtual methods
.method public final cleanUp()V
    .locals 7

    .line 769
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 771
    monitor-exit v0

    return-void

    .line 773
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 774
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 775
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 776
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 777
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    iget-wide v3, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    .line 778
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 781
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 556
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->manageDisableRecoredLocked(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 557
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public disableEdgeLighting(ILjava/lang/String;Z)V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 562
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_0

    .line 564
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 565
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 568
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 572
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-EdgeLightingPolicy start : type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 881
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 882
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 885
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 888
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 889
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    .line 890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  [DisableRecord] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, ""

    .line 892
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 894
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 895
    :try_start_2
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    .line 897
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 898
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 899
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  [DisabledPackages] : type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string v1, ""

    .line 901
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 903
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 904
    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string/jumbo v1, "white"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string v1, "black"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mSuppressed="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, ""

    .line 908
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 902
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 893
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 886
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public getAcceptablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 448
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    .line 452
    :cond_1
    iget p1, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    return-object v2
.end method

.method public final getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 328
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 330
    :catch_0
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApplicationInfo : packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    .line 154
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    .line 155
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const-string v2, "getSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 164
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to get settings"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p2
.end method

.method public final getEdgeLightingRestrictState(I)I
    .locals 5

    .line 820
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 823
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-nez v0, :cond_0

    .line 824
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 827
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 829
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    .line 830
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    goto :goto_0

    :cond_1
    move v3, v1

    move v0, v2

    :goto_0
    if-nez v3, :cond_3

    .line 833
    invoke-virtual {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isSupportedCover(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq p1, v1, :cond_3

    .line 834
    :cond_2
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEdgeLightingRestrictState coverOpen="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 840
    :cond_3
    sget-boolean p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p0, 0xa

    return p0

    .line 844
    :cond_4
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v0, 0x0

    if-ne p1, v1, :cond_5

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    .line 845
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "new_dex"

    const/4 v2, -0x2

    invoke-static {p0, p1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eq p0, v1, :cond_5

    .line 846
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string p1, "Desktop mode enabled and it is not new dex mode"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xb

    return p0

    :cond_5
    return v0
.end method

.method public getGroupNotificationData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .locals 0

    .line 1021
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getGroupData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    move-result-object p0

    return-object p0
.end method

.method public getPolicyByCategory(ILjava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 475
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 477
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 479
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result p1

    if-ge p1, v1, :cond_2

    goto :goto_1

    .line 482
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getRejectablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 462
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    .line 466
    :cond_1
    iget p1, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    return-object v2
.end method

.method public getValidNotificationData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .locals 8

    .line 785
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 786
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 787
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 789
    monitor-exit v0

    return-object v3

    .line 791
    :cond_0
    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 792
    :cond_1
    sget-object v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValidNotificationData packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",now="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",time="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",ret="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    sub-long v6, v1, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_2
    iget-wide v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0xfa0

    cmp-long p1, v1, v4

    if-gez p1, :cond_3

    .line 796
    monitor-exit v0

    return-object p0

    .line 798
    :cond_3
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    .line 799
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAcceptableApplication(Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result p0

    return p0
.end method

.method public isAcceptableApplication(Ljava/lang/String;IZI)Z
    .locals 6

    const/4 v0, 0x1

    .line 358
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getPolicyByCategory(ILjava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v1

    .line 360
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 361
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "isAcceptableApplication: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, " pkg="

    .line 362
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " , range="

    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " , includeAllApp="

    .line 364
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v5, " , userId="

    .line 365
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " , infoRange="

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    iget v5, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " , infoCategory="

    .line 367
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_2

    iget v5, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 368
    sget-object v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const v4, 0xff00

    and-int/2addr v4, p2

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    .line 373
    iget p0, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    return v0

    :cond_5
    if-nez p3, :cond_9

    .line 376
    iget p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/2addr p3, v0

    if-eqz p3, :cond_6

    goto :goto_4

    .line 382
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getAcceptablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object p3

    if-eqz p3, :cond_7

    move p3, v0

    goto :goto_3

    :cond_7
    move p3, v3

    :goto_3
    if-nez v2, :cond_8

    .line 383
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 384
    :cond_8
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "isAcceptableApplication: getAcceptablePolicy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 386
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 377
    :cond_9
    :goto_4
    invoke-virtual {p0, p1, p4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isValidApplication(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_a

    if-eqz v1, :cond_a

    .line 378
    iget v1, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v1, p2

    if-nez v1, :cond_a

    move p3, v3

    :cond_a
    :goto_5
    if-eqz p3, :cond_c

    .line 389
    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 391
    invoke-virtual {p0, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p3

    if-nez p3, :cond_b

    move p3, v0

    goto :goto_6

    :cond_b
    move p3, v3

    :cond_c
    :goto_6
    if-gez p4, :cond_d

    .line 396
    :try_start_0
    iget-object p4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    invoke-virtual {p4, p1, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p4

    goto :goto_7

    .line 398
    :cond_d
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v3, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p4

    .line 401
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageUidAsUser failed - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p4, v3

    :goto_7
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_11

    .line 405
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-nez v1, :cond_e

    const-string/jumbo v1, "notification"

    .line 407
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 406
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    .line 409
    :cond_e
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-eqz v1, :cond_f

    .line 410
    invoke-interface {v1, p1, p4}, Landroid/app/INotificationManager;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result p3

    .line 412
    :cond_f
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_10

    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v1, :cond_11

    .line 413
    :cond_10
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAcceptableApplication - accept rechecked by isEdgeLightingAllowed = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v1

    .line 417
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEdgeLightingAllowed failed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_8
    if-eqz p3, :cond_18

    .line 420
    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_18

    .line 422
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getRejectablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object p2

    if-nez p2, :cond_12

    goto :goto_9

    :cond_12
    move v0, v3

    :goto_9
    if-eqz p3, :cond_15

    if-nez v0, :cond_15

    .line 425
    :try_start_2
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-eqz p0, :cond_13

    .line 426
    invoke-interface {p0, p1, p4, v3}, Landroid/app/INotificationManager;->setAllowEdgeLighting(Ljava/lang/String;IZ)V

    .line 428
    :cond_13
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_14

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz p0, :cond_15

    .line 429
    :cond_14
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string p1, "Block list app so setAllowEdgeLighting to false"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    move-exception p0

    .line 432
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setAllowEdgeLighting failed - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_15
    :goto_a
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_16

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz p0, :cond_17

    .line 436
    :cond_16
    new-instance p0, Ljava/lang/StringBuffer;

    const-string p1, "isAcceptableApplication: getRejectablePolicy "

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 438
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move p3, v0

    :cond_18
    return p3
.end method

.method public isAllowEdgelighting(Z)Z
    .locals 0

    .line 549
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    const/4 p1, 0x1

    if-nez p0, :cond_0

    return p1

    :cond_0
    and-int/lit8 p0, p0, 0x10

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isDeviceInVrMode()Z
    .locals 0

    .line 319
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return p0
.end method

.method public isDexTouchpadEnabled()Z
    .locals 0

    .line 315
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mIsTouchpadEnabled:Z

    return p0
.end method

.method public isEdgeLightingDisabled()Z
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 500
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 501
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "EdgeLighting is disabled"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 504
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 514
    monitor-exit v1

    return v0

    .line 516
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_4

    .line 517
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 521
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    .line 523
    :cond_3
    monitor-exit v1

    return v0

    .line 518
    :cond_4
    :goto_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    .line 523
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isEdgeLightingRestricted(I)Z
    .locals 3

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getEdgeLightingRestrictState(I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 492
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EdgeLighting is Restricted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), range = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEnabledHeadsUp()Z
    .locals 3

    .line 307
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    if-nez v0, :cond_0

    .line 308
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHUNPeeked : UseHeadsUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isHUNPeeked()Z
    .locals 2

    .line 292
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isDeviceInVrMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 293
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v0, "isHUNPeeked : Vr mode"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isMirrorLinkOn()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 299
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v0, "isHUNPeeked : mirror link on"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isMirrorLinkOn()Z
    .locals 1

    const-string/jumbo p0, "net.mirrorlink.on"

    .line 323
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isNotificationForEdgeLighting(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 609
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 614
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-nez p0, :cond_1

    .line 615
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNotificationForEdgeLighting : small icon is null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isRecommendPackage(Ljava/lang/String;)Z
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSupportedCover(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 339
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public final isValidApplication(Ljava/lang/String;I)Z
    .locals 2

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 347
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final manageDisableRecoredLocked(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 6

    .line 576
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    .line 580
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    .line 581
    iget-object v5, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz p1, :cond_4

    .line 586
    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez v4, :cond_3

    .line 593
    new-instance v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    invoke-direct {v4, p0, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord-IA;)V

    .line 595
    :try_start_0
    invoke-interface {p3, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception p0

    .line 597
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "manageDisableRecoredLocked : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 602
    :cond_3
    :goto_2
    iput p1, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    .line 603
    iput-object p3, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    .line 604
    iput-object p2, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 588
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 589
    iget-object p0, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {p0, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_5
    :goto_4
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .line 257
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBootCompleted"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    return-void
.end method

.method public putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v1, p0

    .line 629
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 632
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 634
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 638
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_2

    const-string v6, "android.title"

    .line 641
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "android.text"

    .line 642
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "android.subText"

    .line 643
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    .line 648
    :goto_1
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "putNotification tickerText:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    if-eqz v3, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    move v12, v11

    :goto_2
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ",titleText:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_4

    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    move v12, v11

    :goto_3
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ",text:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    move v12, v11

    :goto_4
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ",sub:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    move v12, v11

    :goto_5
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, "cn= + "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->cleanUp()V

    .line 651
    iget-object v9, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 652
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget v12, v12, Landroid/app/Notification;->ledARGB:I

    if-nez v12, :cond_7

    .line 654
    iget-object v13, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    if-eqz v13, :cond_7

    .line 656
    iget-object v12, v13, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string v13, "color"

    invoke-virtual {v12, v13, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    const/16 v13, -0x3e8

    .line 661
    :try_start_1
    iget-object v14, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-nez v14, :cond_8

    const-string v14, "INotificationManager is null in putNotification, try reload"

    .line 662
    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "notification"

    .line 664
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 663
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    goto :goto_6

    .line 666
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v15

    invoke-interface {v14, v0, v15}, Landroid/app/INotificationManager;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result v13
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 669
    :try_start_2
    sget-object v14, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockScreenNotificationVisibilityForPackage failed - "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 673
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isHeadup"

    move/from16 v10, p2

    .line 674
    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isUpdate"

    move/from16 v10, p3

    .line 675
    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "tickerText"

    .line 676
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "titleText"

    .line 677
    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "text"

    .line 678
    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "subText"

    .line 679
    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "smallIcon"

    .line 680
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "flag"

    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "color"

    .line 682
    invoke-virtual {v0, v2, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "notification_color"

    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->color:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "priority"

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->priority:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "component"

    .line 685
    iget-object v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "component_time"

    .line 686
    iget-wide v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "group_key"

    .line 687
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_intent"

    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "user_id"

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "noti_key"

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "noti_id"

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "noti_tag"

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "noti_visiblity"

    move/from16 v3, p4

    .line 693
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "package_visiblity"

    .line 694
    invoke-virtual {v0, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "alert_group"

    .line 695
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v10, 0x1

    goto :goto_8

    :cond_a
    move v10, v11

    :goto_8
    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "category"

    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "audible_alert"

    move/from16 v3, p5

    .line 697
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "channel_id"

    .line 698
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "bubble"

    move/from16 v3, p6

    .line 699
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 701
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v2, :cond_c

    .line 702
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 703
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v4, v3

    :goto_9
    if-ge v11, v4, :cond_b

    aget-object v6, v3, v11

    .line 704
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_b
    const-string/jumbo v3, "noti_actions"

    .line 707
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 710
    :cond_c
    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    invoke-direct {v2, v14, v15, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;-><init>(JLandroid/os/Bundle;)V

    if-eqz v5, :cond_d

    .line 712
    iget-object v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->updateNotificationData(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;)V

    goto :goto_a

    :cond_d
    move-object/from16 v4, p1

    .line 714
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 715
    iget-object v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getGroupData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 716
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tickerText"

    .line 718
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    .line 719
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "tickerText"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tickerText"

    .line 720
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "tickerText"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "titleText"

    .line 722
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    .line 723
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "titleText"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "titleText"

    .line 724
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "titleText"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "text"

    .line 726
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    .line 727
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "text"

    .line 728
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "subText"

    .line 730
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    .line 731
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "subText"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "subText"

    .line 732
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "subText"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 734
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v3, :cond_e

    .line 735
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Summary notification display. Change text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v3

    if-nez v3, :cond_f

    .line 741
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    :cond_f
    monitor-exit v9

    return-object v0

    :catchall_0
    move-exception v0

    .line 745
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->remove(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public setResumedComponent(Landroid/content/ComponentName;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 804
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    :cond_0
    return-void
.end method

.method public setRinging(Z)V
    .locals 0

    .line 486
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    return-void
.end method

.method public setSuppressed(I)V
    .locals 0

    .line 545
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    return-void
.end method

.method public statusBarDisabled(II)V
    .locals 3

    .line 528
    iget p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    xor-int/2addr p2, p1

    .line 530
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable: < "

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x40000

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    const-string v2, "ALERTS"

    goto :goto_0

    :cond_0
    const-string v2, "alerts"

    .line 533
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    const-string v1, "* "

    goto :goto_1

    :cond_1
    const-string v1, " "

    .line 534
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateEventHistory(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    move p1, p2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 539
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    .line 540
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, p2}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_3
    return-void
.end method

.method public updateEdgeLightingPolicyFromHost(Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->clear()V

    .line 266
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->clear()V

    .line 267
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 268
    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyType()I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    .line 269
    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyVersion()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 270
    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getEdgeLightingPolicyInfoList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    .line 271
    iget v1, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "edge_lighting_recommend_app_list"

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, ","

    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 281
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 282
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
