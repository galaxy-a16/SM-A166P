.class public Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;
.super Ljava/util/concurrent/FutureTask;
.source "SpenGestureManagerService.java"

# interfaces
.implements Lcom/android/server/smartclip/SpenGestureScreenShotManager$ScreenShot;


# static fields
.field public static TAG:Ljava/lang/String; = "FutureScreenShot"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 2277
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public getScreenShot()Landroid/graphics/Bitmap;
    .locals 1

    .line 2284
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;->getScreenShot()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 2288
    sget-object v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2286
    sget-object v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
