.class public final synthetic Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

.field public final synthetic f$1:Lcom/android/server/wm/InsetsSourceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/InsetsSourceProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {v0, p0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->$r8$lambda$_n1R0BMz2keoqM1K5AZl3NgqueY(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;Lcom/android/server/wm/InsetsSourceProvider;)V

    return-void
.end method
