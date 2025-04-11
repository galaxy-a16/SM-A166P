.class public Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "PaymentSafetyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/PaymentSafetyService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/PaymentSafetyService;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sepunion/PaymentSafetyService;Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver;-><init>(Lcom/android/server/sepunion/PaymentSafetyService;)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 400
    :cond_0
    iget-object p3, p0, Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p3}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$fgetmCheckedAppMap(Lcom/android/server/sepunion/PaymentSafetyService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 401
    invoke-static {}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "already checked "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 404
    :cond_1
    iget-object p3, p0, Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p3}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$fgetmForegroundActivitiesPidMap(Lcom/android/server/sepunion/PaymentSafetyService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object p3, p0, Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p3}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$fgetmCheckedAppMap(Lcom/android/server/sepunion/PaymentSafetyService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p0, p1, p2}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$mcheckPaymentApp(Lcom/android/server/sepunion/PaymentSafetyService;II)V

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProcessDied(II)V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {v0}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$fgetmForegroundActivitiesPidMap(Lcom/android/server/sepunion/PaymentSafetyService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {v0}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$fgetmForegroundActivitiesPidMap(Lcom/android/server/sepunion/PaymentSafetyService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$fgetmCheckedAppMap(Lcom/android/server/sepunion/PaymentSafetyService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
