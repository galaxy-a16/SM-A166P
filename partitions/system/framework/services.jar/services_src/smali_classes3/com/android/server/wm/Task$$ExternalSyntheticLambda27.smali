.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;->f$0:Z

    iput-boolean p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;->f$1:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;->f$0:Z

    iget-boolean p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;->f$1:Z

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/Task;->$r8$lambda$rzsbzqnKcJuxqzLoofH1ZFTDF3Q(ZZLcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
