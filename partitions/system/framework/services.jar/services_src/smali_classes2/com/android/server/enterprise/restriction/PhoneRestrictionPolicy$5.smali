.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRestrictionPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .locals 0

    .line 2615
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 2619
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhoneRestrictionPolicy"

    if-nez p1, :cond_0

    const-string p0, "action is null"

    .line 2621
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2624
    :cond_0
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 2625
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2627
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSmsMmsDeliveryHandler(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 2628
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSmsMmsDeliveryHandler(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2630
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$mnotifyRcsChangesAllUser(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    .line 2631
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$mnotifySmsPatternCheck(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 2632
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "android.intent.action.REBOOT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    .line 2637
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2638
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSimPinHandler(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSimPinBind(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2635
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fputmIsPhoneShuttingDown(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Z)V

    :cond_4
    :goto_1
    return-void
.end method
