.class public Lcom/android/server/sepunion/PaymentSafetyService$BgWorkerHandler;
.super Landroid/os/Handler;
.source "PaymentSafetyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/PaymentSafetyService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/PaymentSafetyService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/PaymentSafetyService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Payment thread msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x14

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 p1, 0x46

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$monUserUnlocked(Lcom/android/server/sepunion/PaymentSafetyService;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$monUserAction(Lcom/android/server/sepunion/PaymentSafetyService;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$monPkgChanged(Lcom/android/server/sepunion/PaymentSafetyService;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$mcheckImportantApp(Lcom/android/server/sepunion/PaymentSafetyService;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$mcheckPaymentApp(Lcom/android/server/sepunion/PaymentSafetyService;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/server/sepunion/PaymentSafetyService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p1}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$mloadProctedAppSet(Lcom/android/server/sepunion/PaymentSafetyService;)V

    iget-object p1, p0, Lcom/android/server/sepunion/PaymentSafetyService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p1}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$mloadImportantAppComponentList(Lcom/android/server/sepunion/PaymentSafetyService;)V

    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$mregisterWatcherForImportantComponentList(Lcom/android/server/sepunion/PaymentSafetyService;)V

    :goto_0
    return-void
.end method
