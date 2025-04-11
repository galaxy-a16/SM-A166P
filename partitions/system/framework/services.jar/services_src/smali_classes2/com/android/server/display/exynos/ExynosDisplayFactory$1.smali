.class public Lcom/android/server/display/exynos/ExynosDisplayFactory$1;
.super Ljava/lang/Object;
.source "ExynosDisplayFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->startCountDownTimer(Ljava/lang/String;)V

    return-void
.end method
