.class public final Lcom/android/server/chimera/QuickSwap$QuickSwapHandler;
.super Landroid/os/Handler;
.source "QuickSwap.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/QuickSwap;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/QuickSwap;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/android/server/chimera/QuickSwap$QuickSwapHandler;->this$0:Lcom/android/server/chimera/QuickSwap;

    .line 535
    invoke-static {p1}, Lcom/android/server/chimera/QuickSwap;->-$$Nest$fgetmQuickSwapThread(Lcom/android/server/chimera/QuickSwap;)Lcom/android/server/ServiceThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/QuickSwap;Lcom/android/server/chimera/QuickSwap$QuickSwapHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/chimera/QuickSwap$QuickSwapHandler;-><init>(Lcom/android/server/chimera/QuickSwap;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 540
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/QuickSwap$QuickSwapHandler;->this$0:Lcom/android/server/chimera/QuickSwap;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/QuickSwap;->doQuickSwap(I)V

    :goto_0
    return-void
.end method
