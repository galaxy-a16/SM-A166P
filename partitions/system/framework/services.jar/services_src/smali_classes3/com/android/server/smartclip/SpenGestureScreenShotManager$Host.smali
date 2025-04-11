.class public Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(IIZLandroid/graphics/Rect;IIZ)Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;
    .locals 11

    .line 2238
    new-instance v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;

    new-instance v10, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;-><init>(Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host;IIZLandroid/graphics/Rect;IIZ)V

    invoke-direct {v0, v10}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2244
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method
