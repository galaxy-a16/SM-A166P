.class public Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;
.super Ljava/lang/Object;
.source "CoverDisabler.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public disable:Z

.field public pkg:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverDisabler;

.field public token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverDisabler;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->this$0:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sepunion/cover/CoverDisabler;Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;-><init>(Lcom/android/server/sepunion/cover/CoverDisabler;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 89
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverDisabler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died : pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->this$0:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverDisabler;->-$$Nest$fgetmLock(Lcom/android/server/sepunion/cover/CoverDisabler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->this$0:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lcom/android/server/sepunion/cover/CoverDisabler;->-$$Nest$mdisableCoverManagerLocked(Lcom/android/server/sepunion/cover/CoverDisabler;ZLandroid/os/IBinder;Ljava/lang/String;)Z

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception p0

    .line 92
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
