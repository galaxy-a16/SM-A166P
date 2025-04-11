.class public Lcom/android/server/am/AppProfiler$OnTrimReclaimer;
.super Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;
.source "AppProfiler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .locals 1

    .line 654
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$OnTrimReclaimer;->this$0:Lcom/android/server/am/AppProfiler;

    const-string/jumbo p1, "onTrim"

    const/4 v0, 0x0

    .line 655
    invoke-direct {p0, p1, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public shouldSkipReclaim()Z
    .locals 0

    .line 659
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInCameraLaunch()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
