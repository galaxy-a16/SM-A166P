.class public Lcom/android/server/sepunion/PaymentSafetyService$ProtectedAppDBObserver;
.super Landroid/database/ContentObserver;
.source "PaymentSafetyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/PaymentSafetyService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/PaymentSafetyService;Landroid/os/Handler;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/server/sepunion/PaymentSafetyService$ProtectedAppDBObserver;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    .line 157
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/PaymentSafetyService$ProtectedAppDBObserver;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p1}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/PaymentSafetyService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$ProtectedAppDBObserver;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/PaymentSafetyService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
