.class public final synthetic Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;ZLjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;->f$1:Z

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;->f$2:Ljava/lang/CharSequence;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->$r8$lambda$q3u1MxCzZb-zXmpb_GQYp50suNg(Lcom/android/server/wm/ActivityTaskSupervisor;ZLjava/lang/CharSequence;)V

    return-void
.end method
