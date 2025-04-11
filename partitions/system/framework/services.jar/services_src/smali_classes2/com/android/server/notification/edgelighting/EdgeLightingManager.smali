.class public Lcom/android/server/notification/edgelighting/EdgeLightingManager;
.super Ljava/lang/Object;
.source "EdgeLightingManager.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentProfiles:Landroid/util/SparseArray;

.field public mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

.field public mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

.field public mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mLock:Ljava/lang/Object;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public mRinging:Z

.field public mScreenOnTimeStamp:J

.field public mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mTurnOverLightingPackage:Ljava/lang/String;

.field public mUserId:I

.field public mUserManager:Landroid/os/UserManager;

.field public mUserSetupCompleted:Z

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEdgeLightingClientManager(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEdgeLightingPolicyManager(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRinging(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mRinging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmRinging(Lcom/android/server/notification/edgelighting/EdgeLightingManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mRinging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOnTimeStamp(Lcom/android/server/notification/edgelighting/EdgeLightingManager;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 69
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 71
    const-class v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 89
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mRinging:Z

    const-wide/16 v1, 0x0

    .line 91
    iput-wide v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    .line 95
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 105
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 120
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    .line 137
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-direct {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    .line 138
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 139
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-direct {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    const-string/jumbo v0, "power"

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 141
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "phone"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 143
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 144
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 145
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->registerReceiver()V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 222
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->bind(Landroid/os/IBinder;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9

    .line 392
    sget-boolean p2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p2, :cond_1

    .line 393
    :cond_0
    sget-object p2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelNotification : pkg= "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_1
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelNotification pkg="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    .line 396
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 397
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string p3, "cancelNotification"

    invoke-static {p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->-$$Nest$menforceCallingPermission(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 399
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez p2, :cond_2

    const-string/jumbo p2, "statusbar"

    .line 400
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 402
    :cond_2
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez p2, :cond_3

    .line 403
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string p1, "cancelNotification : mIStatusBarService is null."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 408
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 411
    :try_start_0
    invoke-static {p5, v0, v1, v1}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v8

    .line 412
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 415
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :goto_0
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    throw p0
.end method

.method public cancelNotificationByGroupKey(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move-object/from16 v1, p6

    .line 342
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v4, " , tag = "

    const-string v5, " , key=  "

    const-string v6, ", id=  "

    if-nez v2, :cond_1

    sget-boolean v7, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v9, p4

    goto :goto_1

    .line 343
    :cond_1
    :goto_0
    sget-object v7, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cancelNotificationByGroupKey : cancel notification  uesrid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p2

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " , group = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_1
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cancelNotificationByGroupKey pkg="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    .line 346
    iget-object v7, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v7}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 347
    iget-object v7, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string v8, "cancelNotificationByGroupKey"

    invoke-static {v7, v8}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->-$$Nest$menforceCallingPermission(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 349
    iget-object v7, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v7, :cond_2

    const-string/jumbo v7, "statusbar"

    .line 350
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 352
    :cond_2
    iget-object v7, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v7, :cond_3

    .line 353
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelNotificationByGroupKey : mIStatusBarService is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 358
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_5

    .line 362
    :try_start_0
    iget-object v11, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v11, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getGroupNotificationData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 363
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getChildNotificationCount()I

    move-result v11

    if-gt v11, v14, :cond_5

    invoke-virtual {v1, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getChild(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 364
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getSummaryNotification()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 366
    iget-object v11, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "user_id"

    invoke-virtual {v11, v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 367
    iget-object v11, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "noti_id"

    invoke-virtual {v11, v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 368
    iget-object v11, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "noti_key"

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 369
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v11, "noti_tag"

    invoke-virtual {v1, v11, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x1

    const/4 v15, 0x0

    .line 370
    invoke-static {v14, v15, v11, v11}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v17

    .line 371
    iget-object v11, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v20, v12

    move-object/from16 v12, p1

    move/from16 p2, v13

    move-object/from16 p3, v14

    move/from16 v9, v19

    move v10, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-interface/range {v11 .. v17}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V

    if-nez v2, :cond_4

    .line 373
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 374
    :cond_4
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cancelNotificationByGroupKey : Child count 1. so cancel summary notification : uesrid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v20

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move v9, v14

    move v10, v15

    .line 381
    :cond_6
    :goto_2
    invoke-static {v3, v10, v9, v9}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v6

    .line 382
    iget-object v0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 385
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :goto_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    throw v0
.end method

.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string v1, "disableEdgeLighting"

    invoke-static {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->-$$Nest$menforceCallingPermission(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 333
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public disableEdgeLightingNotification(Ljava/lang/String;Z)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 338
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->disableEdgeLighting(ILjava/lang/String;Z)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "[EdgeLightingManager]"

    .line 1193
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1195
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1196
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getEdgeLightingState()I
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->getEdgeLightingState()I

    move-result p0

    return p0
.end method

.method public final hideEdgeLightingInternal(Ljava/lang/String;I)V
    .locals 3

    .line 302
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideEdgeLightingInternal : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    return-void
.end method

.method public hideForNotification(Landroid/service/notification/StatusBarNotification;I)Z
    .locals 5

    .line 734
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 735
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string p1, "hideForNotification : folded"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-eqz p1, :cond_a

    .line 738
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    .line 741
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 742
    invoke-virtual {p0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 745
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 746
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string p1, "hideForNotification : user setup is not yet completed"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 749
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 750
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideForNotification : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 752
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p0, "hideForNotification : isOngoing is false"

    .line 753
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 756
    :cond_4
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "hideForNotification : isInteractive is true"

    .line 758
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 762
    :cond_5
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v3, 0x1

    .line 763
    invoke-virtual {p1, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 764
    invoke-virtual {p1, v3, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 767
    :cond_6
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p1, v1, v3, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_9

    .line 768
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_7

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_8

    :cond_7
    const-string p0, "hideForNotification : return false by isAcceptableApplication."

    .line 769
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v0

    .line 773
    :cond_9
    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->hideEdgeLightingInternal(Ljava/lang/String;I)V

    :cond_a
    :goto_0
    return v0
.end method

.method public hideForWakeLock(Ljava/lang/String;I)V
    .locals 1

    .line 1046
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 1047
    :cond_0
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideForWakeLock packageName="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_1
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string p1, "hideForWakeLock is no more used"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1060
    sget-boolean p2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p2, :cond_1

    .line 1061
    :cond_0
    sget-object p2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideForWakeLockByWindow : packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p2, 0x6

    .line 1063
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->hideForWakeLockInternal(Ljava/lang/String;II)V

    return-void
.end method

.method public final hideForWakeLockInternal(Ljava/lang/String;II)V
    .locals 2

    .line 1067
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 1068
    invoke-virtual {p0, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hideForWakeLockInternal : Calling user is not supported | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return-void

    .line 1074
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1075
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string p2, "hideForWakeLockInternal : user setup is not yet completed."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hideForWakeLockInternal : user setup is not yet completed. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return-void

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1082
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_2

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 1083
    :cond_2
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hideForWakeLockInternal : return false by isAllowEdgelighting. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 1090
    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1091
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_5

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_6

    .line 1092
    :cond_5
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string p2, "hideForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hideForWakeLockInternal : return false by isAvailableEdgeLighting. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 1099
    :cond_7
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v1, 0x4

    .line 1100
    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 1109
    :cond_8
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_b

    .line 1110
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_9

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_a

    .line 1111
    :cond_9
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string p1, "hideForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    .line 1115
    :cond_b
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    return-void

    .line 1101
    :cond_c
    :goto_0
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_d

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_e

    .line 1102
    :cond_d
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string p2, "hideForWakeLockInternal : return false by checking disable policy."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hideForWakeLockInternal : return false by checking disable policy. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public final isCallingUserSupported(I)Z
    .locals 5

    .line 160
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    .line 161
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    .line 162
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 163
    :cond_0
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallingUserSupported : callingUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isDualAppId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isKnoxId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    iget v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    if-eq v2, p1, :cond_3

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCurrentProfile(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isCurrentProfile(I)Z
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 211
    :goto_0
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCurrentProfile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 213
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 319
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v3, 0x1

    .line 320
    invoke-virtual {v1, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 321
    invoke-virtual {v1, v3, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 323
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    .line 322
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 327
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v2
.end method

.method public final isEdgeLightingServiceUnbinded()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->existsHosts()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isEdgeLightingSettingEnabled(Landroid/content/ContentResolver;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFolded()Z
    .locals 0

    .line 1147
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPackageEnabled(Ljava/lang/String;I)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1131
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string p1, "isPackageEnabled : packageName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isRecommendPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1136
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPackageEnabled : recommend packageName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1140
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final isUserSetupCompleted()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->verifyUserSetupCompleted()V

    .line 152
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    return p0
.end method

.method public onBootCompleted()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->onBootCompleted()V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->updateCurrentProfilesCache()V

    return-void
.end method

.method public onBootPhaseAppsCanStart()V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->onBootPhaseAppsCanStart()V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    .line 185
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 186
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->onSwitchUser(I)V

    .line 187
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->onSwitchUser(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->updateCurrentProfilesCache()V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->onUnlockUser(I)V

    return-void
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "registerListener"

    invoke-static {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->-$$Nest$menforceCallingPermission(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 247
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public final registerReceiver()V
    .locals 2

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setSuppressed(I)V
    .locals 0

    .line 1126
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->setSuppressed(I)V

    return-void
.end method

.method public final showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 3

    const/4 p5, 0x0

    if-eqz p2, :cond_0

    const-string v0, "color"

    .line 285
    invoke-virtual {p2, v0, p5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p5

    .line 287
    :goto_0
    new-instance v1, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const/16 v2, 0x7d1

    filled-new-array {v0, p5}, [I

    move-result-object p5

    invoke-direct {v1, v2, p5}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(I[I)V

    .line 288
    iget p5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v1, p5}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setUserId(I)V

    if-eqz p3, :cond_1

    const/4 p3, -0x1

    .line 290
    invoke-virtual {v1, p3}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setRepeatCount(I)V

    :cond_1
    if-eqz p2, :cond_2

    .line 293
    invoke-virtual {v1, p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    .line 295
    :cond_2
    sget-boolean p2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p2, :cond_3

    sget-boolean p2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p2, :cond_4

    .line 296
    :cond_3
    sget-object p2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "showEdgeLightingInternal : packageName = "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", reason="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method public showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 422
    iget-object v2, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    .line 426
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotification : Should show fullScreenIntent while screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 428
    :cond_0
    iget-object v3, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotification : Should show fullScreenIntent while screen on and keyguard"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 433
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotification : folded"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v4

    .line 439
    :cond_2
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 440
    iget v5, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_3

    .line 441
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotification : lockdown mode"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v4

    :cond_3
    const-string v3, "isHeadUp"

    .line 445
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "isUpdate"

    .line 446
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "isInterrupt"

    .line 447
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "bubble"

    .line 448
    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v8, "smartPopup"

    .line 449
    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "canBypassDnd"

    .line 450
    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string/jumbo v10, "visibility"

    const/16 v11, -0x3e8

    .line 451
    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v11, "sound"

    .line 452
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    const-string/jumbo v12, "vibrate"

    .line 453
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    if-nez v12, :cond_4

    .line 456
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotification : Notification is null"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v4

    :cond_4
    const/4 v12, 0x1

    if-eqz v11, :cond_5

    .line 460
    sget-object v13, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v13, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    move v11, v12

    goto :goto_0

    :cond_5
    move v11, v4

    .line 461
    :goto_0
    iget-object v13, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    const-string v14, "audio"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    if-eqz v1, :cond_6

    move v14, v12

    goto :goto_1

    :cond_6
    move v14, v4

    :goto_1
    if-nez v1, :cond_7

    if-eqz v11, :cond_7

    .line 466
    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-ne v1, v12, :cond_7

    move v14, v12

    :cond_7
    if-nez v11, :cond_9

    if-eqz v14, :cond_8

    goto :goto_2

    :cond_8
    move v12, v4

    .line 475
    :cond_9
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-virtual {v0, v11}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v13

    if-nez v13, :cond_a

    .line 478
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForNotification : Calling user is not supported. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v4

    .line 481
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v13

    if-nez v13, :cond_b

    .line 482
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotification : user setup is not yet completed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForNotification : user setup is not yet completed  | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v4

    .line 486
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget v13, v13, Landroid/app/Notification;->ledARGB:I

    .line 487
    sget-boolean v14, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v15, ", canBypassDnd="

    const-string v4, ", color="

    move/from16 p2, v12

    const-string v12, ", isHeadUp="

    move/from16 v16, v10

    const-string/jumbo v10, "showForNotification : isInteractive="

    if-nez v14, :cond_d

    sget-boolean v14, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v14, :cond_c

    goto :goto_3

    .line 491
    :cond_c
    sget-object v14, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    move/from16 v17, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", packageName = "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p1

    goto :goto_4

    :cond_d
    :goto_3
    move/from16 v17, v11

    .line 488
    sget-object v11, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", sbn = "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_4
    iget-object v9, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isDexTouchpadEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 496
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotification : DEX touchpad enable"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForNotification : DEX touchpad enable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 510
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_f

    .line 511
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotification : return false by notication disabling edge lighting."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForNotification : return false by notication disabling edge lighting | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_f
    if-eqz v6, :cond_10

    .line 531
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotification : return false by isIntercepted"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForNotification : isIntercepted. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    const/4 v6, 0x0

    return v6

    :cond_10
    const/4 v6, 0x0

    if-eqz v2, :cond_13

    if-eqz v7, :cond_11

    .line 538
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForNotification : canBubble. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v6

    :cond_11
    if-eqz v8, :cond_12

    .line 544
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForNotification : isSmartPopup. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v6

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move/from16 v4, v17

    move/from16 v5, v16

    move/from16 v6, p2

    .line 549
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForNotificationScreenOn(Landroid/service/notification/StatusBarNotification;ZZIIZZ)Z

    move-result v0

    return v0

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move/from16 v4, v17

    move/from16 v5, v16

    move/from16 v6, p2

    .line 551
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForNotificationScreenOff(Landroid/service/notification/StatusBarNotification;ZZIIZZ)Z

    move-result v0

    return v0
.end method

.method public final showForNotificationScreenOff(Landroid/service/notification/StatusBarNotification;ZZIIZZ)Z
    .locals 13

    move-object v0, p0

    move-object v8, p1

    .line 602
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 604
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    move-result v10

    .line 605
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_2

    .line 606
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOff : return false by isAvailableEdgeLighting. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_1
    return v11

    .line 614
    :cond_2
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v12, 0x1

    .line 615
    invoke-virtual {v1, v12}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 616
    invoke-virtual {v1, v12, v9}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    .line 623
    :cond_3
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;

    move-result-object v1

    .line 624
    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEmptyText(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 625
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : texts are empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOff : texts are empty. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->semFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Landroid/app/Notification;->semFlags:I

    return v11

    :cond_4
    if-eqz p3, :cond_5

    .line 633
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 634
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOff Alert once notification. sbn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOff : Alert once notification. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sbn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v11

    .line 641
    :cond_5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 642
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff No peeking: suppressed due to group alert behavior"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOff : No peeking suppressed due to group alert behavior. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v11

    :cond_6
    and-int/lit8 v2, v10, 0x4

    if-eqz v2, :cond_7

    move v2, v12

    goto :goto_0

    :cond_7
    move v2, v11

    .line 651
    :goto_0
    iget-object v3, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    move/from16 v4, p4

    invoke-virtual {v3, v9, v12, v2, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v2

    if-nez v2, :cond_a

    .line 652
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 653
    :cond_8
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v11

    :cond_a
    const/4 v2, 0x4

    if-ne v10, v2, :cond_b

    move v2, v12

    goto :goto_1

    :cond_b
    move v2, v11

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_c

    const/4 v2, 0x7

    goto :goto_2

    :cond_c
    move v2, v12

    :goto_2
    const/4 v4, 0x1

    move-object p1, v9

    move-object p2, v1

    move/from16 p3, v3

    move/from16 p4, v2

    move/from16 p5, v4

    .line 658
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_d

    move v11, v12

    :cond_d
    return v11

    .line 617
    :cond_e
    :goto_3
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOff : return false by checking disable policy  | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v11
.end method

.method public final showForNotificationScreenOn(Landroid/service/notification/StatusBarNotification;ZZIIZZ)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 666
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    move-result v11

    .line 668
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    const/4 v13, 0x0

    if-nez v1, :cond_2

    .line 669
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 670
    :cond_0
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn : return false by isAvailableEdgeLighting. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_1
    return v13

    .line 677
    :cond_2
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/16 v2, 0x100

    invoke-virtual {v1, v10, v2, v9}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v14

    if-nez v14, :cond_3

    .line 679
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEnabledHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_3
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 680
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 681
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 682
    invoke-virtual {v1, v12}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 683
    invoke-virtual {v1, v12, v10}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    .line 690
    :cond_4
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;

    move-result-object v1

    .line 691
    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEmptyText(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 692
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : texts are empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn : texts are empty. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->semFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Landroid/app/Notification;->semFlags:I

    return v13

    :cond_5
    if-eqz p3, :cond_6

    .line 700
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 701
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn Alert once notification. sbn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn : Alert once notification. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sbn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v13

    .line 708
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 709
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn No peeking: suppressed due to group alert behavior"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn : No peeking suppressed due to group alert behavior. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v13

    .line 716
    :cond_7
    iget-object v2, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, v10, v12, v9}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_a

    .line 717
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 718
    :cond_8
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v13

    :cond_a
    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    move/from16 v14, p2

    :goto_0
    if-eqz v14, :cond_c

    .line 724
    iget-object v2, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, v8}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isNotificationForEdgeLighting(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v12

    goto :goto_1

    :cond_c
    move v2, v13

    :goto_1
    if-eqz v2, :cond_f

    const/4 v3, 0x4

    if-ne v11, v3, :cond_d

    move v3, v12

    goto :goto_2

    :cond_d
    move v3, v13

    :goto_2
    const/4 v4, 0x0

    if-eqz v3, :cond_e

    const/4 v3, 0x7

    goto :goto_3

    :cond_e
    move v3, v12

    :goto_3
    const/4 v5, 0x1

    move-object/from16 p1, v10

    move-object/from16 p2, v1

    move/from16 p3, v4

    move/from16 p4, v3

    move/from16 p5, v5

    .line 727
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    :cond_f
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_10

    move v13, v2

    :cond_10
    return v13

    .line 684
    :cond_11
    :goto_4
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn : return false by checking disable policy.  | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v13
.end method

.method public showForResumedActivity(Landroid/content/ComponentName;)V
    .locals 0

    .line 1119
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->setResumedComponent(Landroid/content/ComponentName;)V

    return-void
.end method

.method public showForToast(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10

    .line 781
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 782
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "showForToast : folded"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    .line 786
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 787
    invoke-virtual {p0, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 790
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 791
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForToast : user setup is not yet completed."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForToast : user setup is not yet completed. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    .line 796
    :cond_2
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    const-string/jumbo v2, "showForToast : packageName = "

    if-eqz v0, :cond_3

    .line 797
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",text="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    :cond_3
    sget-boolean p2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-eqz p2, :cond_4

    .line 799
    sget-object p2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result p2

    if-nez p2, :cond_7

    .line 802
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_5

    if-eqz v0, :cond_6

    .line 803
    :cond_5
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForToast : return false by isAllowEdgelighting. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_6
    return v1

    .line 810
    :cond_7
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p2, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result p2

    if-nez p2, :cond_a

    .line 811
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_8

    if-eqz v0, :cond_9

    .line 812
    :cond_8
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForToast : return false by isAvailableEdgeLighting."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForToast : return false by isAvailableEdgeLighting. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_9
    return v1

    .line 819
    :cond_a
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result p2

    if-nez p2, :cond_12

    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/16 v3, 0x200

    .line 820
    invoke-virtual {p2, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result p2

    if-eqz p2, :cond_b

    goto/16 :goto_1

    .line 827
    :cond_b
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p2, p1, v3, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_e

    .line 828
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_c

    if-eqz v0, :cond_d

    .line 829
    :cond_c
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "showForToast : return false by isAcceptableApplication."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v1

    .line 833
    :cond_e
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-nez p2, :cond_f

    .line 834
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForToast : power not interactive. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    .line 839
    :cond_f
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getValidNotificationData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 842
    invoke-virtual {p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->isOnGoing()Z

    move-result p3

    .line 843
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showForToast : ongoing check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_10

    .line 845
    iget-object v6, p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x200

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    return v2

    .line 848
    :cond_10
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForToast : onGoing | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_11
    return v1

    .line 821
    :cond_12
    :goto_1
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForToast : return false by checking disable policy."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForToast : return false by checking disable policy. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1
.end method

.method public showForWakeLock(Ljava/lang/String;I)Z
    .locals 3

    .line 951
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 952
    :cond_0
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForWakeLock : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x4

    .line 954
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeLockInternal(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .line 961
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    .line 962
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 963
    :cond_0
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForWakeLockByWindow : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", screenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForWakeLockByWindow : Calling user is not supported. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 969
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForWakeLockByWindow : screenOn | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p2, 0x6

    .line 973
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeLockInternal(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final showForWakeLockInternal(Ljava/lang/String;II)Z
    .locals 8

    .line 977
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 978
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "showForWakeLockInternal : folded"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    .line 982
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 983
    invoke-virtual {p0, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 984
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForWakeLockInternal : Calling user is not supported. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    .line 990
    :cond_1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 991
    iget v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 992
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForWakeLockInternal : lockdown mode"

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    .line 996
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 997
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForWakeLockInternal : user setup is not yet completed"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForWakeLockInternal : user setup is not yet completed. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    .line 1003
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1004
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_4

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_5

    .line 1005
    :cond_4
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForWakeLockInternal : return false by isAllowEdgelighting."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForWakeLockInternal : return false by isAllowEdgelighting. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_5
    return v1

    .line 1013
    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1014
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_7

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_8

    .line 1015
    :cond_7
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForWakeLockInternal : return false by isAvailableEdgeLighting. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_8
    return v1

    .line 1022
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x4

    .line 1023
    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    .line 1032
    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, v2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_d

    .line 1033
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_b

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_c

    .line 1034
    :cond_b
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "showForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v1

    :cond_d
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    .line 1038
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    const/4 p0, 0x1

    return p0

    .line 1024
    :cond_e
    :goto_0
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_f

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_10

    .line 1025
    :cond_f
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForWakeLockInternal : return false by checking disable policy."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForWakeLockInternal : return false by checking disable policy. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_10
    return v1
.end method

.method public showForWakeUp(Ljava/lang/String;I)Z
    .locals 3

    .line 857
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 858
    :cond_0
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForWakeUp : packageName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x3

    .line 860
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeUpInternal(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 867
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 868
    :cond_0
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForWakeUpByWindow is not supported : packageName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final showForWakeUpInternal(Ljava/lang/String;II)Z
    .locals 8

    .line 885
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 886
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "showForWakeUpInternal : folded"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    .line 890
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 891
    invoke-virtual {p0, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 892
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForWakeUpInternal : Calling user is not supported. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    .line 898
    :cond_1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 899
    iget v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 900
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForWakeUpInternal : lockdown mode"

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    .line 904
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 905
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForWakeUpInternal : user setup is not yet completed"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForWakeUpInternal : user setup is not yet completed. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    .line 911
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 912
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_4

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_5

    .line 913
    :cond_4
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForWakeUpInternal : return false by isAllowEdgelighting. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_5
    return v1

    .line 920
    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 921
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_7

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_8

    .line 922
    :cond_7
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForWakeUpInternal : return false by isAvailableEdgeLighting."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForWakeUpInternal : return false by isAvailableEdgeLighting. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_8
    return v1

    .line 929
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 930
    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    .line 939
    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, v2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_b

    .line 940
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "showForWakeUpInternal : return false by isAcceptableApplication."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    .line 943
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    const/4 p0, 0x1

    return p0

    .line 931
    :cond_c
    :goto_0
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_d

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz p0, :cond_e

    .line 932
    :cond_d
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showForWakeUpInternal : return false by checking disable policy."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showForWakeUpInternal : return false by checking disable policy. | Package : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    :cond_e
    return v1
.end method

.method public startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    .locals 1

    .line 270
    iget-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p3, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 271
    iget-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v0, "startEdgeLighting"

    invoke-static {p3, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->-$$Nest$menforceCallingPermission(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 273
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V

    return-void
.end method

.method public statusBarDisabled(II)V
    .locals 0

    .line 1123
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->statusBarDisabled(II)V

    return-void
.end method

.method public stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    .line 277
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 278
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v0, "stopEdgeLighting"

    invoke-static {p2, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->-$$Nest$menforceCallingPermission(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 280
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->stopEdgeLighting(Ljava/lang/String;)V

    return-void
.end method

.method public unbindService(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 231
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 233
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->unbind(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->-$$Nest$menforceCallingPermission(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 254
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentProfilesCache()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 194
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    .line 195
    iget v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 196
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 199
    :cond_0
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentProfilesCache size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 238
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 240
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .locals 1

    if-nez p2, :cond_0

    .line 259
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateEdgeLightingPolicy : policy is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 263
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->updateEdgeLightingPolicyFromHost(Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    .line 266
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p2}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyType()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->setConnectedMode(Z)V

    return-void
.end method

.method public final verifyUserSetupCompleted()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    return-void
.end method
