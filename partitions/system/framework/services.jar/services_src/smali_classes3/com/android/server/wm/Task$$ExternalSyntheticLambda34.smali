.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;->f$0:Lcom/android/server/wm/Task;

    iput p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;->f$0:Lcom/android/server/wm/Task;

    iget v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;->f$1:I

    iget-boolean p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/Task;->$r8$lambda$_Ozt9sYdRsPgYBEywcrb_pKGVL8(Lcom/android/server/wm/Task;IZ)V

    return-void
.end method
