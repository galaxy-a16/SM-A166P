.class public Lcom/android/server/display/exynos/ExynosDisplayATC$4;
.super Ljava/lang/Object;
.source "ExynosDisplayATC.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$4;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 961
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$4;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$minitCountDownTimer(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    return-void
.end method
