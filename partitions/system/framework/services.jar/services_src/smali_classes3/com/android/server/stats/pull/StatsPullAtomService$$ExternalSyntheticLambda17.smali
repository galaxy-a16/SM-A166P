.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/SynchronousResultReceiver;


# direct methods
.method public synthetic constructor <init>(Landroid/os/SynchronousResultReceiver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$0:Landroid/os/SynchronousResultReceiver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$0:Landroid/os/SynchronousResultReceiver;

    check-cast p1, Landroid/uwb/UwbActivityEnergyInfo;

    invoke-static {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->$r8$lambda$aEsigPDB5TFNOZgMyf69wNiKevE(Landroid/os/SynchronousResultReceiver;Landroid/uwb/UwbActivityEnergyInfo;)V

    return-void
.end method
