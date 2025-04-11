.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Lcom/android/server/wm/Transition;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/wm/Task;

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$1:Lcom/android/server/wm/Task;

    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$2:Lcom/android/server/wm/Transition;

    iput-object p4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$3:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$4:Z

    iput p6, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$5:I

    iput p7, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$6:I

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$1:Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$2:Lcom/android/server/wm/Transition;

    iget-object v3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$3:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$4:Z

    iget v5, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$5:I

    iget v6, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;->f$6:I

    move v7, p1

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/Task;->$r8$lambda$8D1gg9kphKYSI9BjL9XBK6ShRNc(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;ZIIZ)V

    return-void
.end method
