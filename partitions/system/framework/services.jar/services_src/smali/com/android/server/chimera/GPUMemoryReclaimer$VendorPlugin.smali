.class public abstract Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;
.super Ljava/lang/Object;
.source "GPUMemoryReclaimer.java"


# instance fields
.field public final SWAP_FREE_PERCENTAGE_THRESHOLD:I

.field public mIsInitialized:Z

.field public mPluginName:Ljava/lang/String;

.field public self:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public final synthetic this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->SWAP_FREE_PERCENTAGE_THRESHOLD:I

    iput-object p3, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->mPluginName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract calculateReclaimed([J)J
.end method

.method public abstract calculateResident([J)J
.end method

.method public abstract getMeminfoRaw(I)[J
.end method

.method public abstract getReclaimableTasks()Ljava/util/ArrayList;
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    return p0
.end method

.method public swapIn(ILjava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapInImpl(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public abstract swapInImpl(ILjava/lang/String;)I
.end method

.method public swapOut(ILjava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->getSwapFreePercentage()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapOutImpl(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public abstract swapOutImpl(ILjava/lang/String;)I
.end method
