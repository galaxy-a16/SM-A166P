.class public Lcom/android/server/RCPManagerService$2;
.super Landroid/os/ContainerStateReceiver;
.source "RCPManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/server/RCPManagerService$2;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 173
    :try_start_0
    iget-object p0, p0, Lcom/android/server/RCPManagerService$2;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {p0, p2}, Lcom/android/server/RCPManagerService;->-$$Nest$mscanAndStartBridgeProxy(Lcom/android/server/RCPManagerService;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    const-string/jumbo p1, "onRemovePersona"

    .line 187
    invoke-static {p1}, Lcom/android/server/RCPManagerService;->-$$Nest$smcheckCallerPermissionFor(Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onRemovePersona called for  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p0, p0, Lcom/android/server/RCPManagerService$2;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    return-void
.end method

.method public onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    const-string/jumbo p1, "onResetPersona"

    .line 194
    invoke-static {p1}, Lcom/android/server/RCPManagerService;->-$$Nest$smcheckCallerPermissionFor(Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onResetPersona called for  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p0, p0, Lcom/android/server/RCPManagerService$2;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    return-void
.end method

.method public onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    const-string/jumbo p0, "onPersonaActive"

    .line 181
    invoke-static {p0}, Lcom/android/server/RCPManagerService;->-$$Nest$smcheckCallerPermissionFor(Ljava/lang/String;)I

    .line 182
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " onPersonaActive called for  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
