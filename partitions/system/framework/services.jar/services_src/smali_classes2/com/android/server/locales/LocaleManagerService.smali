.class public Lcom/android/server/locales/LocaleManagerService;
.super Lcom/android/server/SystemService;
.source "LocaleManagerService.java"


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

.field public final mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

.field public final mContext:Landroid/content/Context;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mWriteLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBackupHelper(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerBackupHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderService(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mWriteLock:Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService-IA;)V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    .line 119
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 120
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 123
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocaleManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v1, Lcom/android/server/locales/SystemAppUpdateTracker;

    invoke-direct {v1, p0}, Lcom/android/server/locales/SystemAppUpdateTracker;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    .line 129
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/locales/LocaleManagerService$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/locales/LocaleManagerService$1;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/SystemAppUpdateTracker;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 136
    new-instance v2, Lcom/android/server/locales/LocaleManagerBackupHelper;

    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/locales/LocaleManagerBackupHelper;-><init>(Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 138
    new-instance v2, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;

    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-direct {v2, v3, v1, p0}, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;-><init>(Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/server/locales/SystemAppUpdateTracker;Lcom/android/server/locales/LocaleManagerService;)V

    iput-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 140
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x1

    invoke-virtual {v2, p1, p0, v0, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Landroid/content/pm/PackageManager;Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/internal/content/PackageMonitor;)V
    .locals 1

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mWriteLock:Ljava/lang/Object;

    .line 152
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 153
    new-instance p1, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService-IA;)V

    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    .line 154
    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 155
    iput-object p3, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 156
    iput-object p4, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 157
    iput-object p5, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 158
    iput-object p6, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method public static createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;
    .locals 1

    .line 383
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "android.intent.extra.PACKAGE_NAME"

    .line 384
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.extra.LOCALE_LIST"

    .line 385
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x11000000

    .line 386
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static startResourceOverlayServiceForCleanUp(Landroid/content/Context;)V
    .locals 2

    .line 295
    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    move-result-object p0

    .line 297
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;->cleanUpOverlays()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while starting LOM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LocaleManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteOverrideLocaleConfig(Ljava/lang/String;I)V
    .locals 0

    .line 825
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getXmlFileNameForUser(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 827
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "LocaleManagerService"

    const-string p2, "Delete the override LocaleConfig."

    .line 828
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public final enforceChangeConfigurationPermission(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .locals 2

    .line 424
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v1, "setApplicationLocales"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 v0, 0x4

    .line 427
    invoke-virtual {p1, v0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    .line 429
    throw p0
.end method

.method public final enforceReadAppSpecificLocalesPermission()V
    .locals 2

    .line 533
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_APP_SPECIFIC_LOCALES"

    const-string v1, "getApplicationLocales"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSetAppSpecificLocaleConfigPermission(Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V
    .locals 2

    .line 765
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SET_APP_SPECIFIC_LOCALECONFIG"

    const-string/jumbo v1, "setOverrideLocaleConfig"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 v0, 0x4

    .line 769
    invoke-virtual {p1, v0}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setStatus(I)V

    .line 771
    throw p0
.end method

.method public getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;
    .locals 8

    .line 439
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 443
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getApplicationLocales"

    const/4 v7, 0x0

    move v3, p2

    .line 442
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    .line 459
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->isCallerInstaller(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    invoke-virtual {p0, p2}, Lcom/android/server/locales/LocaleManagerService;->isCallerFromCurrentInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 462
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->isAppForeground(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerService;->enforceReadAppSpecificLocalesPermission()V

    .line 466
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 468
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 471
    throw p0
.end method

.method public final getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 483
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getApplicationConfig(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    move-result-object p0

    if-nez p0, :cond_0

    .line 489
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0

    .line 491
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 492
    :cond_1
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getInstallingPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 550
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0

    .line 552
    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 554
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package not found "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocaleManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;
    .locals 10

    const-string v0, "i18n.feature.dynamic_locales_change"

    const/4 v1, 0x1

    .line 781
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 785
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 790
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getOverrideLocaleConfig"

    const/4 v9, 0x0

    move v5, p2

    .line 789
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 794
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getXmlFileNameForUser(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 795
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    return-object v1

    .line 802
    :cond_1
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :try_start_1
    invoke-static {p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 804
    invoke-virtual {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object p0

    .line 808
    new-instance v0, Landroid/app/LocaleConfig;

    const-string v2, ","

    .line 809
    invoke-static {v2, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/app/LocaleConfig;-><init>(Landroid/os/LocaleList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 802
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 813
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse XML configuration from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocaleManagerService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final getPackageUid(Ljava/lang/String;I)I
    .locals 2

    .line 540
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v0, 0x0

    .line 541
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSystemLocales()Landroid/os/LocaleList;
    .locals 2

    .line 564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 566
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerService;->getSystemLocalesUnchecked()Landroid/os/LocaleList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 569
    throw p0
.end method

.method public final getSystemLocalesUnchecked()Landroid/os/LocaleList;
    .locals 0

    .line 575
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 577
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 580
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final getXmlFileNameForUser(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 883
    new-instance p0, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p2

    const-string v0, "locale_configs"

    invoke-direct {p0, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 884
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public final isCallerFromCurrentInputMethod(I)Z
    .locals 4

    const-string v0, "i18n.feature.allow_ime_query_app_locale"

    const/4 v1, 0x1

    .line 512
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 517
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "default_input_method"

    .line 516
    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 522
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_1

    .line 525
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method public final isCallerInstaller(Ljava/lang/String;I)Z
    .locals 1

    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_0

    .line 503
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z
    .locals 2

    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    if-gez p0, :cond_2

    .line 400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LocaleManagerService"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 405
    invoke-virtual {p4, p0}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setStatus(I)V

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p3, p0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    .line 408
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown package: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz p3, :cond_3

    .line 412
    invoke-virtual {p3, p0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setTargetUid(I)V

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    .line 414
    invoke-virtual {p4, p0}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setTargetUid(I)V

    .line 418
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public final loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 4

    .line 863
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "locale-config"

    .line 865
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 866
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 867
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 868
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    .line 869
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    .line 870
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 871
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 873
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tag name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocaleManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final logAppLocalesMetric(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .locals 7

    const/16 v0, 0x19c

    .line 586
    iget v1, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCallingUid:I

    iget v2, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    iget-object v3, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    iget v6, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCaller:I

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public final logAppSupportedLocalesChangedMetric(Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V
    .locals 8

    const/16 v0, 0x247

    .line 889
    iget v1, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mCallingUid:I

    iget v2, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mTargetUid:I

    iget v3, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mNumLocales:I

    iget-boolean v4, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mOverrideRemoved:Z

    iget-boolean v5, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsResConfig:Z

    iget-boolean v6, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsPrevConfig:Z

    iget v7, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZZI)V

    return-void
.end method

.method public final notifyAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .locals 1

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 374
    invoke-static {v0, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object p3

    .line 376
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x200000

    .line 377
    invoke-virtual {p3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public notifyInstallerOfAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .locals 2

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    .line 360
    invoke-static {v1, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object p1

    .line 363
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public final notifyRegisteredReceivers(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .locals 1

    const-string v0, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    .line 341
    invoke-static {v0, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object p1

    .line 343
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const-string p3, "android.permission.READ_APP_SPECIFIC_LOCALES"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "locale"

    .line 163
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 164
    new-instance v0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl-IA;)V

    const-class p0, Lcom/android/server/locales/LocaleManagerInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V
    .locals 10

    .line 729
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v0

    .line 732
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const-string v3, "LocaleManagerService"

    if-nez p3, :cond_0

    const-string p3, "There is no LocaleConfig, reset app locales"

    .line 736
    invoke-static {v3, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    .line 739
    :goto_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 740
    invoke-virtual {v0, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/app/LocaleConfig;->containsLocale(Ljava/util/Locale;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v5, "Missing from the LocaleConfig, reset app locales"

    .line 741
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    goto :goto_1

    .line 745
    :cond_1
    invoke-virtual {v0, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_2
    if-eqz v2, :cond_3

    .line 751
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Ljava/util/Locale;

    .line 753
    :try_start_0
    new-instance v7, Landroid/os/LocaleList;

    .line 754
    invoke-interface {v1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/util/Locale;

    invoke-direct {v7, p3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iget-object p3, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 755
    invoke-virtual {p3, p2, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->areLocalesSetFromDelegate(ILjava/lang/String;)Z

    move-result v8

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v9, p4

    .line 753
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 757
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not set locales for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    return-void
.end method

.method public setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;ZI)V
    .locals 9

    .line 240
    new-instance v0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    .line 241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;-><init>(I)V

    .line 243
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {v0, p5}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setCaller(I)V

    .line 246
    invoke-virtual {p3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setNewLocales(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 249
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "setApplicationLocales"

    const/4 v8, 0x0

    move v4, p2

    .line 248
    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 p5, 0x0

    .line 259
    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->enforceChangeConfigurationPermission(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    .line 264
    :cond_0
    iget-object p5, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 265
    invoke-virtual {p3}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    .line 264
    invoke-virtual {p5, p2, p1, p4, v1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->persistLocalesModificationInfo(ILjava/lang/String;ZZ)V

    .line 266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocalesUnchecked(Ljava/lang/String;ILandroid/os/LocaleList;Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    .line 277
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :try_start_2
    invoke-interface {v1, p3, p1, p2}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;->applyPerAppLocale(Landroid/os/LocaleList;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "LocaleManagerService"

    .line 281
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while starting LOM: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    :goto_0
    :try_start_4
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->logAppLocalesMetric(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    return-void

    :catchall_0
    move-exception p1

    .line 286
    :try_start_5
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->logAppLocalesMetric(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    .line 290
    throw p1
.end method

.method public final setApplicationLocalesUnchecked(Ljava/lang/String;ILandroid/os/LocaleList;Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .locals 1

    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {p4, v0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setPrevLocales(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 315
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createPackageConfigurationUpdater(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object v0

    .line 317
    invoke-interface {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->setLocales(Landroid/os/LocaleList;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->commit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->notifyAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 322
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->notifyInstallerOfAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 323
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->notifyRegisteredReceivers(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 325
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->notifyBackupManager()V

    const/4 p0, 0x1

    .line 326
    invoke-virtual {p4, p0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 329
    invoke-virtual {p4, p0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    :goto_0
    return-void
.end method

.method public setOverrideLocaleConfig(Ljava/lang/String;ILandroid/app/LocaleConfig;)V
    .locals 10

    const-string v0, "i18n.feature.dynamic_locales_change"

    const/4 v1, 0x1

    .line 600
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 604
    :cond_0
    new-instance v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;

    .line 605
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;-><init>(I)V

    .line 607
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 611
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "setOverrideLocaleConfig"

    const/4 v9, 0x0

    move v5, p2

    .line 610
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x0

    .line 619
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 620
    invoke-virtual {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->enforceSetAppSpecificLocaleConfigPermission(Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V

    .line 623
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 625
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locales/LocaleManagerService;->setOverrideLocaleConfigUnchecked(Ljava/lang/String;ILandroid/app/LocaleConfig;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 630
    invoke-virtual {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->logAppSupportedLocalesChangedMetric(Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V

    return-void

    :catchall_0
    move-exception p1

    .line 627
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 630
    invoke-virtual {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->logAppSupportedLocalesChangedMetric(Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V

    .line 631
    throw p1
.end method

.method public final setOverrideLocaleConfigUnchecked(Ljava/lang/String;ILandroid/app/LocaleConfig;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V
    .locals 7

    .line 637
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 646
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 645
    invoke-static {v1}, Landroid/app/LocaleConfig;->fromContextIgnoringOverride(Landroid/content/Context;)Landroid/app/LocaleConfig;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getXmlFileNameForUser(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-nez p3, :cond_1

    .line 654
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "LocaleManagerService"

    const-string/jumbo v5, "remove the override LocaleConfig"

    .line 655
    invoke-static {p3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 658
    :cond_0
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/android/server/locales/LocaleManagerService;->removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V

    .line 662
    invoke-virtual {p4, v4}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setOverrideRemoved(Z)V

    .line 663
    invoke-virtual {p4, v4}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setStatus(I)V

    .line 665
    monitor-exit v0

    return-void

    .line 668
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;

    move-result-object v5

    .line 667
    invoke-virtual {p3, v5}, Landroid/app/LocaleConfig;->isSameLocaleConfig(Landroid/app/LocaleConfig;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p0, "LocaleManagerService"

    const-string/jumbo p1, "the same override, ignore it"

    .line 669
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p4, v4}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setSameAsPrevConfig(Z)V

    .line 671
    monitor-exit v0

    return-void

    .line 674
    :cond_2
    invoke-virtual {p3}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    move-result-object v5

    if-nez v5, :cond_3

    .line 678
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v5

    .line 684
    :cond_3
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    invoke-virtual {p4, v6}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setNumLocales(I)V

    .line 687
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    :try_start_2
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 691
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/android/server/locales/LocaleManagerService;->toXmlByteArray(Landroid/os/LocaleList;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 701
    :try_start_4
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 703
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/locales/LocaleManagerService;->removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V

    .line 707
    invoke-virtual {p3, v1}, Landroid/app/LocaleConfig;->isSameLocaleConfig(Landroid/app/LocaleConfig;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "LocaleManagerService"

    const-string/jumbo p1, "setOverrideLocaleConfig, same as the app\'s LocaleConfig"

    .line 708
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {p4, v4}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setSameAsResConfig(Z)V

    .line 711
    :cond_4
    invoke-virtual {p4, v4}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setStatus(I)V

    .line 717
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 v2, 0x0

    :goto_0
    const-string p1, "LocaleManagerService"

    .line 693
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to write file "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_5

    .line 695
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_5
    const/4 p0, 0x2

    .line 697
    invoke-virtual {p4, p0}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setStatus(I)V

    .line 699
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_2
    const-string p0, "LocaleManagerService"

    .line 648
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package name "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    monitor-exit v0

    return-void

    .line 717
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final toXmlByteArray(Landroid/os/LocaleList;)[B
    .locals 6

    const-string p0, "locale"

    const-string v0, "locale-config"

    const/4 v1, 0x0

    .line 834
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    .line 836
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 837
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 838
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 840
    new-instance v4, Ljava/util/ArrayList;

    .line 841
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 842
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 843
    invoke-interface {v3, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "name"

    .line 844
    invoke-interface {v3, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 845
    invoke-interface {v3, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 848
    :cond_0
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 849
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 854
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 834
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v1
.end method
