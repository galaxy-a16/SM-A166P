.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field public final synthetic f$1:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-static {v0, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->$r8$lambda$tOfchoulKHJOxetCkeP9PKKoT8o(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    move-result-object p0

    return-object p0
.end method
