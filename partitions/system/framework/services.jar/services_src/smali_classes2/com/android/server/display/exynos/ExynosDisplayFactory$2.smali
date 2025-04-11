.class public Lcom/android/server/display/exynos/ExynosDisplayFactory$2;
.super Landroid/os/Handler;
.source "ExynosDisplayFactory.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msysfsWriteCGC17_ENC(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msysfsWriteCGC17_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sendEmptyUpdate()V

    :goto_0
    return-void
.end method
