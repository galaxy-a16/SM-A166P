.class public Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;
.super Ljava/lang/Object;
.source "PmCustomInjector.java"


# instance fields
.field public final mChinaGmsToggleUtilsProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstallLogger:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mPmService:Lcom/android/server/pm/PackageManagerService;

.field public final mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mUnknownSourceAppManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;


# direct methods
.method public static synthetic $r8$lambda$Ciwmev4QIZTpBeb9kkLkCErTLp4(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/SkippingApks;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->lambda$new$0(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/SkippingApks;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JOCB0Tgdxn3wYZjpstiv8kVybb8(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->lambda$new$2(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ROfq-CL2M3GYiWJyopSl_h_8GU4(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->lambda$new$6(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WI8eqUfG7qdmAOzN8WuRE3-ZVPo(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/OmcInstallHelper;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->lambda$new$1(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cKONZOPl6BfJ8QPO8rijADbkRnQ(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->lambda$new$3(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d4GyxIJiqOe985ByuHGEqfIsbEg(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->lambda$new$4(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vx6ptWZh4PgyyHoErZD8z5nYTz4(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->lambda$new$5(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 37
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 39
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 40
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 41
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mChinaGmsToggleUtilsProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 42
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInstallLogger:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUnknownSourceAppManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 54
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 55
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-direct {p1, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 56
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 58
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mChinaGmsToggleUtilsProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 60
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 62
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInstallLogger:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 64
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-direct {p1, p4}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUnknownSourceAppManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 65
    invoke-static {}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->isChinaModel()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/SkippingApks;
    .locals 0

    .line 54
    new-instance p0, Lcom/samsung/android/server/pm/install/SkippingApks;

    invoke-direct {p0}, Lcom/samsung/android/server/pm/install/SkippingApks;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/OmcInstallHelper;
    .locals 0

    .line 57
    new-instance p1, Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;
    .locals 0

    .line 59
    new-instance p1, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public static synthetic lambda$new$3(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;
    .locals 1

    .line 61
    new-instance p1, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;-><init>(Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;)V

    return-object p1
.end method

.method public static synthetic lambda$new$4(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;
    .locals 0

    .line 63
    new-instance p1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private synthetic lambda$new$5(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;
    .locals 2

    .line 67
    new-instance v0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object p0

    .line 68
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p2

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;ZZ)V

    return-object v0
.end method

.method private synthetic lambda$new$6(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;
    .locals 2

    .line 71
    new-instance v0, Lcom/samsung/android/server/pm/install/PrePackageInstaller;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object p0

    .line 72
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p2

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/samsung/android/server/pm/install/PrePackageInstaller;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;ZZ)V

    return-object v0
.end method


# virtual methods
.method public getChinaGmsToggleUtils()Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mChinaGmsToggleUtilsProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    return-object p0
.end method

.method public getMumUserInstallPolicy()Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    return-object p0
.end method

.method public getOmcInstallHelper()Lcom/samsung/android/server/pm/install/OmcInstallHelper;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    return-object p0
.end method

.method public getPackageManagerBackupController()Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;

    return-object p0
.end method

.method public getPrePackageInstaller()Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

    return-object p0
.end method

.method public getSkippingApks()Lcom/samsung/android/server/pm/install/SkippingApks;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/pm/install/SkippingApks;

    return-object p0
.end method

.method public getUnknownSourceAppManager()Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUnknownSourceAppManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    return-object p0
.end method
