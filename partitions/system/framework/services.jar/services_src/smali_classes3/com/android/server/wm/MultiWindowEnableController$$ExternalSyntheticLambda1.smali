.class public final synthetic Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskDisplayArea;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskDisplayArea;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    iput p2, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    iget p0, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->$r8$lambda$1EwUUaHsYvRj8HrEZTB4KbIXR-Y(Lcom/android/server/wm/TaskDisplayArea;ILcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
