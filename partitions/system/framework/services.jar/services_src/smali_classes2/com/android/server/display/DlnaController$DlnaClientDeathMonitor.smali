.class public Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mBinder:Landroid/os/IBinder;

.field public mPlayerType:I

.field public final synthetic this$0:Lcom/android/server/display/DlnaController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DlnaController;Landroid/os/IBinder;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DlnaClientDeathMonitor, playerType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p3}, Lcom/android/server/display/DlnaController;->-$$Nest$mdlnaPlayerTypeToString(Lcom/android/server/display/DlnaController;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DlnaController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mPlayerType:I

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->binderDied()V

    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "DlnaController"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v0}, Lcom/android/server/display/DlnaController;->-$$Nest$fgetmHandler(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;-><init>(Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    const-string v0, "DlnaController"

    const-string/jumbo v1, "unlinkToDeath"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
