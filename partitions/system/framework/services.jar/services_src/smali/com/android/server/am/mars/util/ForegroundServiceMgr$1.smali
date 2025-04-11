.class public Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;
.super Landroid/app/IProcessObserver$Stub;
.source "ForegroundServiceMgr.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 2

    .line 85
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    invoke-static {v0, p1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->-$$Nest$misFGSTarget(Lcom/android/server/am/mars/util/ForegroundServiceMgr;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    invoke-static {v0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->-$$Nest$fgetmMapFGSRecord(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/ForegroundServiceRecord;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/android/server/am/mars/ForegroundServiceRecord;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/mars/ForegroundServiceRecord;-><init>(Ljava/lang/String;I)V

    .line 96
    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    invoke-static {p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->-$$Nest$fgetmMapFGSRecord(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/am/mars/ForegroundServiceRecord;->setFGSType(I)V

    :cond_1
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    .line 0
    return-void
.end method
