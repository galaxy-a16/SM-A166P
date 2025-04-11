.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$1:Lcom/android/server/wm/Task;

    iput p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$1:Lcom/android/server/wm/Task;

    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$2:I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$RpSeXULmjoQZ8nV4Fr9qAV1baK0(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)V

    return-void
.end method
