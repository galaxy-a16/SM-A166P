.class public final Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 701
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintSpooler;->-$$Nest$fgetmLock(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {p2}, Landroid/print/IPrintSpooler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpooler;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/print/RemotePrintSpooler;->-$$Nest$fputmRemoteInstance(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)V

    .line 703
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {p2}, Lcom/android/server/print/RemotePrintSpooler;->-$$Nest$msetClientLocked(Lcom/android/server/print/RemotePrintSpooler;)V

    .line 704
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {p0}, Lcom/android/server/print/RemotePrintSpooler;->-$$Nest$fgetmLock(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 705
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 710
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintSpooler;->-$$Nest$fgetmLock(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->-$$Nest$fgetmRemoteInstance(Lcom/android/server/print/RemotePrintSpooler;)Landroid/print/IPrintSpooler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->-$$Nest$mclearClientLocked(Lcom/android/server/print/RemotePrintSpooler;)V

    .line 713
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/print/RemotePrintSpooler;->-$$Nest$fputmRemoteInstance(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)V

    .line 715
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
