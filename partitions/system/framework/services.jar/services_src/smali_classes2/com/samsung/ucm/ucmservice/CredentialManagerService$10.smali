.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService$10;
.super Landroid/content/BroadcastReceiver;
.source "CredentialManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0

    .line 6195
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$10;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "UcmService"

    const-string/jumbo v0, "mOnNotiRemoveBroadcastReceiver "

    .line 6198
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "CS_NAME"

    .line 6199
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "USER_ID"

    const/4 v1, -0x1

    .line 6200
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 6201
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$10;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p0, p2, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mshowEnforcedLockTypeNotificationIntenal(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILjava/lang/String;)V

    return-void
.end method
