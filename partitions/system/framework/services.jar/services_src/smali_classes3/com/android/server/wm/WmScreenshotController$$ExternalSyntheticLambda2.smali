.class public final synthetic Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotController;[ZIZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WmScreenshotController;

    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$1:[Z

    iput p3, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$3:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WmScreenshotController;

    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$1:[Z

    iget v2, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$2:I

    iget-boolean p0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$3:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/WmScreenshotController;->$r8$lambda$5QrTHG1dvrQ8loOfCs7l5yP-0cc(Lcom/android/server/wm/WmScreenshotController;[ZIZLcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
