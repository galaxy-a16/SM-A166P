.class public Lcom/android/server/wm/PackageFeatureManagerService;
.super Ljava/lang/Object;
.source "PackageFeatureManagerService.java"


# instance fields
.field public final mLogger:Lcom/samsung/android/server/util/CoreLogger;

.field public final mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

.field public final mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;


# direct methods
.method public static synthetic $r8$lambda$ivMY00pyrccMgtRx6yJMO4U7RcI(Lcom/android/server/wm/PackageFeatureManagerService;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackageFeatureManagerService;->lambda$new$0(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/samsung/android/server/util/CoreLogger;->getBuilder()Lcom/samsung/android/server/util/CoreLogger$Builder;

    move-result-object v0

    const-string v1, "PackageFeature"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/util/CoreLogger$Builder;->setTag(Ljava/lang/String;)Lcom/samsung/android/server/util/CoreLogger$Builder;

    move-result-object v0

    const-string v1, "*** Logs ***"

    .line 58
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/util/CoreLogger$Builder;->setDumpTitle(Ljava/lang/String;)Lcom/samsung/android/server/util/CoreLogger$Builder;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/util/CoreLogger$Builder;->setBufferSize(I)Lcom/samsung/android/server/util/CoreLogger$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/util/CoreLogger$Builder;->build()Lcom/samsung/android/server/util/CoreLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 64
    invoke-static {}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->getController()Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    .line 65
    new-instance v0, Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;-><init>(Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo-IA;)V

    invoke-static {v0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->getScpmController(Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;)Lcom/samsung/android/server/corescpm/ScpmController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    .line 66
    new-instance v0, Lcom/android/server/wm/PackageFeatureManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/PackageFeatureManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PackageFeatureManagerService;)V

    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->registerForSystemReady(Lcom/samsung/android/server/util/SafetySystemService$Callback;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 6

    .line 67
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 68
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 69
    iget-object p1, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    iget-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    invoke-interface {p1, v1, v2, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->startController(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;)V

    .line 70
    iget-object p1, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    iget-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/wm/PackageFeatureManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/wm/PackageFeatureManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/corescpm/ScpmController;)V

    invoke-interface {p1, v3}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->setFileDescriptorFunction(Ljava/util/function/Function;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    iget-object p1, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    .line 72
    invoke-interface {p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->getGroupNames()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    iget-object v5, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 71
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/server/corescpm/ScpmController;->registerScpm(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Set;Ljava/util/function/Consumer;Lcom/samsung/android/server/util/CoreLogger;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    invoke-interface {v0, p1}, Lcom/samsung/android/server/corescpm/ScpmController;->dump(Ljava/io/PrintWriter;)V

    .line 79
    iget-object p0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getScpmVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/server/wm/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->getScpmVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
