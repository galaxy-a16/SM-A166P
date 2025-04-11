.class public final synthetic Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WallpaperController;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WallpaperController;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/WallpaperController;

    iput-object p2, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda4;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/WallpaperController;

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda4;->f$1:Landroid/os/IBinder;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/wm/WallpaperController;->$r8$lambda$WDbf84YvOAqv7PQQSytW2aQbvUE(Lcom/android/server/wm/WallpaperController;Landroid/os/IBinder;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
