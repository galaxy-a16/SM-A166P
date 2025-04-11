.class public Lcom/android/server/slice/SliceManagerService;
.super Landroid/app/slice/ISliceManager$Stub;
.source "SliceManagerService.java"


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public final mAssistantLookup:Landroid/util/SparseArray;

.field public mCachedDefaultHome:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mHomeLookup:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPermissions:Lcom/android/server/slice/SlicePermissionManager;

.field public final mPinnedSlicesByUri:Landroid/util/ArrayMap;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRoleObserver:Lcom/android/server/slice/SliceManagerService$RoleObserver;


# direct methods
.method public static synthetic $r8$lambda$DmYiPdD5wPYAd1_kd20C7SnE9TI(Lcom/android/server/slice/SliceManagerService;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->lambda$getHomeMatcher$3(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NO9wQZwmcxnNiNsBjPKFwchU8f8(ILcom/android/server/slice/PinnedSliceState;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/slice/SliceManagerService;->lambda$onStopUser$0(ILcom/android/server/slice/PinnedSliceState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uOSrXoCyGP8QUr1pQXKjNscNKp4(Lcom/android/server/slice/SliceManagerService;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->lambda$getAssistantMatcher$2(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xoNmrH0GrCiFnt5kDWUK13YrhA8(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/slice/SliceManagerService;->lambda$pinSlice$1(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/slice/SliceManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissions(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monStopUser(Lcom/android/server/slice/SliceManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->onStopUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUnlockUser(Lcom/android/server/slice/SliceManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->onUnlockUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msystemReady(Lcom/android/server/slice/SliceManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService;->systemReady()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 106
    invoke-static {}, Lcom/android/server/slice/SliceManagerService;->createHandler()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7

    .line 110
    invoke-direct {p0}, Landroid/app/slice/ISliceManager$Stub;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 491
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    .line 604
    new-instance v2, Lcom/android/server/slice/SliceManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/slice/SliceManagerService$1;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    iput-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 112
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 113
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 112
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 114
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 115
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 116
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    .line 118
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 120
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 122
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 123
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 124
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p2, "package"

    .line 125
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 126
    new-instance p2, Lcom/android/server/slice/SliceManagerService$RoleObserver;

    invoke-direct {p2, p0}, Lcom/android/server/slice/SliceManagerService$RoleObserver;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    iput-object p2, p0, Lcom/android/server/slice/SliceManagerService;->mRoleObserver:Lcom/android/server/slice/SliceManagerService$RoleObserver;

    .line 127
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static createHandler()Lcom/android/server/ServiceThread;
    .locals 4

    .line 598
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "SliceManagerService"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 600
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-object v0
.end method

.method private synthetic lambda$getAssistantMatcher$2(I)Ljava/lang/String;
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getAssistant(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getHomeMatcher$3(I)Ljava/lang/String;
    .locals 0

    .line 474
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getDefaultHome(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onStopUser$0(ILcom/android/server/slice/PinnedSliceState;)Z
    .locals 0

    .line 139
    invoke-virtual {p1}, Lcom/android/server/slice/PinnedSliceState;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$pinSlice$1(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_2

    .line 174
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 176
    invoke-virtual {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->isAssistant(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xe

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0xd

    .line 175
    :goto_1
    invoke-virtual {v0, p1, p3, p0}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public applyRestore([BI)V
    .locals 2

    .line 322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    const-string v0, "SliceManagerService"

    if-nez p1, :cond_0

    .line 326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "applyRestore: no payload to restore for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 331
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "applyRestore: cannot restore policy for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 334
    :cond_1
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 336
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 337
    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v1}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 338
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->readRestore(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "applyRestore: error reading payload"

    .line 340
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 323
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkAccess(Ljava/lang/String;Landroid/net/Uri;II)I
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    move v4, p4

    move v5, p3

    .line 403
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermissionInternal(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;II[Ljava/lang/String;)I
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 230
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermissionInternal(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkSlicePermissionInternal(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p3

    move/from16 v10, p5

    move-object/from16 v11, p6

    .line 236
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v12, -0x1

    const/4 v13, 0x0

    if-nez v1, :cond_2

    .line 238
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    array-length v15, v14

    move v6, v13

    :goto_0
    if-ge v6, v15, :cond_1

    aget-object v3, v14, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v16, v6

    move-object/from16 v6, p6

    .line 239
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermissionInternal(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return v13

    :cond_0
    add-int/lit8 v6, v16, 0x1

    goto :goto_0

    :cond_1
    return v12

    .line 246
    :cond_2
    invoke-virtual {v7, v1, v2}, Lcom/android/server/slice/SliceManagerService;->hasFullSliceAccess(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v13

    .line 249
    :cond_3
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/slice/SlicePermissionManager;->hasPermission(Ljava/lang/String;ILandroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v13

    :cond_4
    if-eqz v11, :cond_6

    if-eqz v9, :cond_6

    .line 254
    invoke-virtual {v7, v9, v8, v2}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 256
    invoke-virtual {v7, v9}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 257
    array-length v0, v11

    move v3, v13

    :goto_1
    if-ge v3, v0, :cond_6

    aget-object v4, v11, v3

    .line 258
    iget-object v5, v7, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    move/from16 v6, p4

    invoke-virtual {v5, v4, v6, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_5

    .line 259
    invoke-static {v8, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    .line 260
    invoke-virtual {v7, v8, v4}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v3

    .line 261
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object/from16 v1, p3

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    return v13

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return v12
.end method

.method public createPinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;
    .locals 1

    .line 387
    new-instance v0, Lcom/android/server/slice/PinnedSliceState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/slice/PinnedSliceState;-><init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public final enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 428
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/slice/SliceManagerService;->checkAccess(Ljava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 430
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    .line 432
    invoke-virtual {p0, p2, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Access to slice "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is required"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 436
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceCrossUser(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public final enforceCrossUser(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 420
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 421
    invoke-static {p2, p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string p2, "Slice interaction across users requires INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0

    .line 352
    invoke-virtual {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 353
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Caller must own "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 634
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 635
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 636
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 637
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 634
    invoke-virtual {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    goto :goto_0

    .line 638
    :cond_0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getAssistant(I)Ljava/lang/String;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 485
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAssistantMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    new-instance v1, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/slice/SliceManagerService;I)V

    invoke-direct {v0, v1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;-><init>(Ljava/util/function/Supplier;)V

    .line 466
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getBackupPayload(I)[B
    .locals 5

    .line 297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const-string v1, "SliceManagerService"

    if-eqz p1, :cond_0

    .line 302
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackupPayload: cannot backup policy for user "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 305
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 307
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 308
    sget-object v4, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v4}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 310
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p0, v3}, Lcom/android/server/slice/SlicePermissionManager;->writeBackup(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 312
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 313
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackupPayload: error writing payload for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    .line 298
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDefaultHome(I)Ljava/lang/String;
    .locals 8

    .line 502
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 508
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 510
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 513
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 514
    invoke-virtual {v3, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 521
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    iput-object v4, p0, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 530
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p0, :cond_4

    .line 534
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 535
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 538
    :cond_2
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v7, v4, :cond_3

    goto :goto_2

    .line 541
    :cond_3
    iget-object p1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 542
    iget v4, v6, Landroid/content/pm/ResolveInfo;->priority:I

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 545
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 555
    throw p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getHomeMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    new-instance v1, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/slice/SliceManagerService;I)V

    invoke-direct {v0, v1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;-><init>(Ljava/util/function/Supplier;)V

    .line 475
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public final getOrCreatePinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/PinnedSliceState;

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->createPinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v1

    .line 379
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 382
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/slice/PinnedSliceState;

    if-eqz p0, :cond_0

    .line 370
    monitor-exit v0

    return-object p0

    .line 367
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Slice %s not pinned"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 368
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 367
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 371
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPinnedSlices(Ljava/lang/String;)[Landroid/net/Uri;
    .locals 5

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 150
    :try_start_0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/slice/PinnedSliceState;

    .line 151
    invoke-virtual {v3}, Lcom/android/server/slice/PinnedSliceState;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    invoke-virtual {v3}, Lcom/android/server/slice/PinnedSliceState;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 153
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 155
    invoke-static {v3}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/Uri;

    return-object p0

    :catchall_0
    move-exception p0

    .line 159
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getPinnedSpecs(Landroid/net/Uri;Ljava/lang/String;)[Landroid/app/slice/SliceSpec;
    .locals 0

    .line 205
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, p2, p1}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 207
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p1, p2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->getSpecs()[Landroid/app/slice/SliceSpec;

    move-result-object p0

    return-object p0
.end method

.method public final getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 3

    .line 408
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 410
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 411
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 412
    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p1

    const/4 p2, 0x0

    .line 411
    invoke-virtual {p0, v2, p2, p1}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 413
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 416
    throw p0
.end method

.method public grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 271
    invoke-virtual {p0, p3}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "android.permission.MANAGE_SLICE_PERMISSIONS"

    const-string v1, "Slice granting requires MANAGE_SLICE_PERMISSIONS"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eqz p4, :cond_0

    .line 276
    iget-object p3, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p3, p2, v2}, Lcom/android/server/slice/SlicePermissionManager;->grantFullAccess(Ljava/lang/String;I)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    const-string p4, ""

    .line 280
    invoke-virtual {p3, p4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 281
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 282
    invoke-static {v5, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    .line 283
    invoke-virtual {p0, v5, v4}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v3

    .line 284
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 286
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 288
    :try_start_0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    throw p0
.end method

.method public grantSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 215
    invoke-virtual {p0, p1, p3, v5}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 216
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v2, p2

    move v3, v5

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    return-void
.end method

.method public final hasFullSliceAccess(Ljava/lang/String;I)Z
    .locals 3

    .line 444
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 446
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isAssistant(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 447
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isGrantedFullAccess(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 450
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    throw p0
.end method

.method public hasSliceAccess(Ljava/lang/String;)Z
    .locals 1

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;->hasFullSliceAccess(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public invalidateCachedDefaultHome()V
    .locals 1

    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    return-void
.end method

.method public final isAssistant(Ljava/lang/String;I)Z
    .locals 0

    .line 455
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getAssistantMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isDefaultHomeApp(Ljava/lang/String;I)Z
    .locals 0

    .line 459
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getHomeMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isGrantedFullAccess(Ljava/lang/String;I)Z
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager;->hasFullAccess(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 347
    new-instance v0, Lcom/android/server/slice/SliceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/slice/SliceShellCommand;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onStopUser(I)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public pinSlice(Ljava/lang/String;Landroid/net/Uri;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V
    .locals 2

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 169
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 170
    invoke-virtual {p0, p2, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {p0, p2, v1}, Lcom/android/server/slice/SliceManagerService;->getOrCreatePinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/slice/PinnedSliceState;->pin(Ljava/lang/String;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V

    .line 173
    iget-object p2, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, v1, p1, v0}, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removePinnedSlice(Landroid/net/Uri;)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/slice/PinnedSliceState;

    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->destroy()V

    .line 360
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public revokeSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 223
    invoke-virtual {p0, p1, p3, v5}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 224
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v2, p2

    move v3, v5

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->revokeSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    return-void
.end method

.method public final systemReady()V
    .locals 0

    .line 0
    return-void
.end method

.method public unpinSlice(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)V
    .locals 1

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 186
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 188
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1, p3}, Lcom/android/server/slice/PinnedSliceState;->unpin(Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->removePinnedSlice(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SliceManagerService"

    .line 193
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final verifyCaller(Ljava/lang/String;)V
    .locals 1

    .line 440
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void
.end method
