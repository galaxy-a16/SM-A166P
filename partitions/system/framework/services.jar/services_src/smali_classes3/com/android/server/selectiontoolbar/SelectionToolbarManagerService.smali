.class public final Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "SelectionToolbarManagerService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/server/selectiontoolbar/SelectionToolbarServiceNameResolver;

    invoke-direct {v0}, Lcom/android/server/selectiontoolbar/SelectionToolbarServiceNameResolver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->newServiceLocked(IZ)Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;

    move-result-object p0

    return-object p0
.end method

.method public newServiceLocked(IZ)Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;
    .locals 1

    new-instance p2, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;-><init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;-><init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)V

    const-string/jumbo v1, "selection_toolbar"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
