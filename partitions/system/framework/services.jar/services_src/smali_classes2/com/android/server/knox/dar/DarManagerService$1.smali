.class public Lcom/android/server/knox/dar/DarManagerService$1;
.super Landroid/app/UserSwitchObserver;
.source "DarManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/DarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$1;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockedBootComplete(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLockedBootComplete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DarManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService$1;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    invoke-static {v0}, Lcom/android/server/knox/dar/DarManagerService;->-$$Nest$fgetmDarHandler(Lcom/android/server/knox/dar/DarManagerService;)Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    move-result-object v0

    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$1;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    invoke-static {p0}, Lcom/android/server/knox/dar/DarManagerService;->-$$Nest$fgetmDarHandler(Lcom/android/server/knox/dar/DarManagerService;)Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
