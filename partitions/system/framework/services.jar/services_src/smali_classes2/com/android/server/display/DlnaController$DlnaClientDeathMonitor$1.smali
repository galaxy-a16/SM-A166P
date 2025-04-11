.class public Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v0}, Lcom/android/server/display/DlnaController;->-$$Nest$fgetmDevice(Lcom/android/server/display/DlnaController;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDlnaDevice;->setConnectionState(I)V

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v0}, Lcom/android/server/display/DlnaController;->-$$Nest$msendStatusChangedBroadcast(Lcom/android/server/display/DlnaController;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v0}, Lcom/android/server/display/DlnaController;->-$$Nest$fgetmDlnaMonitor(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v0}, Lcom/android/server/display/DlnaController;->-$$Nest$fgetmDlnaMonitor(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->unlinkToDeath()V

    .line 161
    iget-object p0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object p0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/display/DlnaController;->-$$Nest$fputmDlnaMonitor(Lcom/android/server/display/DlnaController;Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)V

    :cond_1
    return-void
.end method
