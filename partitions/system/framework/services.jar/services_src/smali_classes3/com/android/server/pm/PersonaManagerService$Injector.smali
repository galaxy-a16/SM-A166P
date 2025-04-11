.class public Lcom/android/server/pm/PersonaManagerService$Injector;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mBaseUserPath:Ljava/io/File;

.field public final mContainerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

.field public final mContext:Landroid/content/Context;

.field public final mCorePackageUid:Ljava/util/ArrayList;

.field public final mDataDir:Ljava/io/File;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mIsTestingMode:Z

.field public final mObject:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public final mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$mgetApplicationPackageManager(Lcom/android/server/pm/PersonaManagerService$Injector;)Landroid/app/ApplicationPackageManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService$Injector;->getApplicationPackageManager()Landroid/app/ApplicationPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/knox/ContainerDependencyWrapper;Lcom/samsung/android/knox/PersonaManagerInternal;Landroid/app/admin/DevicePolicyManager;Ljava/util/ArrayList;Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/server/knox/PersonaPolicyManagerService;Landroid/content/pm/IPackageManager;Z)V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 483
    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 484
    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mObject:Ljava/lang/Object;

    .line 485
    iput-object p4, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mDataDir:Ljava/io/File;

    .line 486
    iput-object p5, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mBaseUserPath:Ljava/io/File;

    .line 487
    iput-object p7, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 488
    iput-object p8, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 489
    iput-boolean p15, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mIsTestingMode:Z

    .line 490
    iput-object p9, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mCorePackageUid:Ljava/util/ArrayList;

    .line 491
    iput-object p10, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mActivityManager:Landroid/app/ActivityManager;

    .line 492
    iput-object p11, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 493
    iput-object p12, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mUserManager:Landroid/os/UserManager;

    .line 494
    iput-object p6, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContainerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 495
    iput-object p13, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    return-void
.end method


# virtual methods
.method public binderClearCallingIdentity()J
    .locals 2

    .line 499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public binderRestoreCallingIdentity(J)V
    .locals 0

    .line 503
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public getActivityManager()Landroid/app/ActivityManager;
    .locals 1

    .line 547
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method public final getApplicationPackageManager()Landroid/app/ApplicationPackageManager;
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    check-cast p0, Landroid/app/ApplicationPackageManager;

    return-object p0
.end method

.method public getBaseUserPath()Ljava/io/File;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mBaseUserPath:Ljava/io/File;

    return-object p0
.end method

.method public getContainerDependencyWrapper()Lcom/android/server/knox/ContainerDependencyWrapper;
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ContainerDependencyWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCorePackageUid()Ljava/util/ArrayList;
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mCorePackageUid:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDataDir()Ljava/io/File;
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mDataDir:Ljava/io/File;

    return-object p0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 0

    .line 563
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method public getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    return-object p0
.end method

.method public getPersonaPolicyManagerService()Lcom/android/server/knox/PersonaPolicyManagerService;
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/PersonaPolicyManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/PersonaPolicyManagerService;

    move-result-object p0

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 555
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public isTestingMode()Z
    .locals 0

    .line 567
    iget-boolean p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mIsTestingMode:Z

    return p0
.end method
