.class public Lcom/android/server/PinnerService$3;
.super Landroid/app/UidObserver;
.source "PinnerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method public static synthetic $r8$lambda$L17-QwCKX4lfAcey_s7O0ftZcrY(Lcom/android/server/PinnerService;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/PinnerService;->-$$Nest$mhandleUidActive(Lcom/android/server/PinnerService;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sB4covpmUZNayFosKXamDu1uOP8(Lcom/android/server/PinnerService;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/PinnerService;->-$$Nest$mhandleUidGone(Lcom/android/server/PinnerService;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/PinnerService;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->-$$Nest$fgetmPinnerHandler(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/PinnerService$3$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/PinnerService$3$$ExternalSyntheticLambda1;-><init>()V

    iget-object p0, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    .line 373
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 372
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1

    .line 366
    iget-object p2, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p2}, Lcom/android/server/PinnerService;->-$$Nest$fgetmPinnerHandler(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;

    move-result-object p2

    new-instance v0, Lcom/android/server/PinnerService$3$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/PinnerService$3$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 366
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
