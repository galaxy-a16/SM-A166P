.class public final Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# instance fields
.field public final mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1734
    invoke-direct {p0, p1, v0, v1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;II)V

    .line 1737
    iput-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    return-void
.end method


# virtual methods
.method public onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .locals 6

    .line 1754
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V

    return-void
.end method

.method public onHotplug(JJZ)V
    .locals 6

    .line 1742
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onHotplug(JJZ)V

    return-void
.end method

.method public onModeChanged(JJIJ)V
    .locals 8

    .line 1748
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onModeChanged(JJIJ)V

    return-void
.end method
