.class public Lcom/android/server/smartclip/SpenGestureManagerService$7;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$7;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$7;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmAcService(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$7;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmAcIsBound(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$7;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$msendDefferedPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$7;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmAcServiceConnection(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$7;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmAcService(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Messenger;)V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$7;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmAcIsBound(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    return-void
.end method
