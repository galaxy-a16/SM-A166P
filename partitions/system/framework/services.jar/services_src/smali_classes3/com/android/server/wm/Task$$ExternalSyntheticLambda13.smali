.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$0:Z

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$0:Z

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/Task;->$r8$lambda$HtLwTo6XUS5TyWdw6lnW2QRWqtU(ZLjava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
