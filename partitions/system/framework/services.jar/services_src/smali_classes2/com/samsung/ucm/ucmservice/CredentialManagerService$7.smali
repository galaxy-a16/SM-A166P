.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "CredentialManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "The exception occurs "

    .line 652
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside mRefreshReceiver onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 654
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "onReceive : ACTION_BOOT_COMPLETED"

    .line 655
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :try_start_0
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgents()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->registerHALService()I

    move-result p2

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerHALService : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mrunSefTestForEseCommTA(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    const-string/jumbo p2, "runSefTestForEseCommTA executed."

    .line 669
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_2
    :try_start_3
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$misAppletPluginExist(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$misUcmDarEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 675
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mrunLccmScript(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 678
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 681
    :cond_0
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fgetmContext(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 682
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fgetmEmergencyEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "Already UPSM is enabled nothing to do"

    .line 683
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 685
    :cond_1
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fputmEmergencyEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Z)V

    const-string p0, "Already UPSM disabled -> enabled"

    .line 686
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 689
    :cond_2
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fgetmEmergencyEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Already UPSM enabled -> disabled"

    .line 690
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mrefreshAgentList(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Bundle;)V

    .line 692
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fputmEmergencyEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Z)V

    :cond_3
    :goto_3
    return-void
.end method
