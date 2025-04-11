.class public Lcom/android/server/display/exynos/ExynosDisplayTune$1;
.super Ljava/util/TimerTask;
.source "ExynosDisplayTune.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayTune;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayTune;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayTune;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayTune;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->-$$Nest$mgetCalibXMLPath(Lcom/android/server/display/exynos/ExynosDisplayTune;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tune"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
