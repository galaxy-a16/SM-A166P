.class public final synthetic Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LockTaskController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LockTaskController;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/LockTaskController;

    iput p2, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/LockTaskController;

    iget p0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/wm/LockTaskController;->$r8$lambda$SLWfvkaDVrEq4cNN59k0PM43xTU(Lcom/android/server/wm/LockTaskController;I)V

    return-void
.end method
