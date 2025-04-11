.class public final synthetic Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotController;Z[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WmScreenshotController;

    iput-boolean p2, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$2:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WmScreenshotController;

    iget-boolean v1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$1:Z

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$2:[Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/WmScreenshotController;->$r8$lambda$A0h86Ys2_YorF2AjXV-FaVwsvHo(Lcom/android/server/wm/WmScreenshotController;Z[ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
