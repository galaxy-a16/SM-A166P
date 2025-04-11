.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Rect;

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;->f$0:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;->f$0:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;->f$1:[Z

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/Task;->$r8$lambda$tosxeRFKiQEFDI4m7XxE59sKNnM(Landroid/graphics/Rect;[ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
