.class public Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PersonaManagerService.java"


# instance fields
.field public finished:Z

.field public result:Z

.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3

    .line 905
    monitor-enter p0

    const/4 v0, 0x1

    .line 906
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 907
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->result:Z

    const-string v0, "PersonaManagerService"

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageDeleteObs::packageDeleted response for package -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 910
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
