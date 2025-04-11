.class public Lcom/android/server/wm/DisplayRotationCompatPolicy$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "DisplayRotationCompatPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayRotationCompatPolicy;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$1;->this$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed(Ljava/lang/String;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$1;->this$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->-$$Nest$mnotifyCameraClosed(Lcom/android/server/wm/DisplayRotationCompatPolicy;Ljava/lang/String;)V

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$1;->this$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->-$$Nest$mnotifyCameraOpened(Lcom/android/server/wm/DisplayRotationCompatPolicy;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
