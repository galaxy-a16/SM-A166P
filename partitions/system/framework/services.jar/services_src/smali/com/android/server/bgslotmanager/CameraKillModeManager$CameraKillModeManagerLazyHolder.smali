.class public abstract Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;
.super Ljava/lang/Object;
.source "CameraKillModeManager.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/bgslotmanager/CameraKillModeManager;

.field public static isinitClass:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/bgslotmanager/CameraKillModeManager;-><init>(Lcom/android/server/bgslotmanager/CameraKillModeManager-IA;)V

    sput-object v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;->INSTANCE:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;->isinitClass:Z

    return-void
.end method
