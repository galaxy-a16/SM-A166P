.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

.field public final synthetic f$1:Landroid/accessibilityservice/MagnificationConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;->f$1:Landroid/accessibilityservice/MagnificationConfig;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;->f$1:Landroid/accessibilityservice/MagnificationConfig;

    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->$r8$lambda$6Q5yGjWy-QREc8NS2M-iNKtuDow(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;Landroid/accessibilityservice/MagnificationConfig;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V

    return-void
.end method
