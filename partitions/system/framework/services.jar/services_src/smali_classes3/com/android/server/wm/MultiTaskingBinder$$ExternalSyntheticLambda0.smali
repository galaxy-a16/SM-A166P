.class public final synthetic Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>([Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda0;->f$0:[Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda0;->f$0:[Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingBinder;->$r8$lambda$6vEuYqjWxmiy7mnayywIG-YqrbQ([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
