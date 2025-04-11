.class public Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;
.super Landroid/os/Handler;
.source "SecurityPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 610
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 611
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "SecurityPolicy"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 628
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown msg type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v2, :cond_1

    .line 619
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$mgetFactoryReceiver(Lcom/android/server/enterprise/security/SecurityPolicy;)Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$fputfactoryReceiver(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;)V

    .line 620
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$fgetfactoryReceiver(Lcom/android/server/enterprise/security/SecurityPolicy;)Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo p0, "successful unregister of Broadcast Receiver "

    .line 621
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "message not send from Broadcast Receiver "

    .line 624
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
