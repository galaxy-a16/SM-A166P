.class public Lcom/android/server/wm/WmScreenshotController$2;
.super Landroid/os/Handler;
.source "WmScreenshotController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic val$conn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WmScreenshotController;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$2;->this$0:Lcom/android/server/wm/WmScreenshotController;

    iput-object p3, p0, Lcom/android/server/wm/WmScreenshotController$2;->val$conn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 270
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "WindowManager"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "Get SCREENSHOT_MSG_PROCESS_COMPLETE"

    .line 278
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WmScreenshotController$2;->this$0:Lcom/android/server/wm/WmScreenshotController;

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$2;->val$conn:Landroid/content/ServiceConnection;

    invoke-static {p1, p0, v1}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$mresetConnection(Lcom/android/server/wm/WmScreenshotController;Landroid/content/ServiceConnection;Z)V

    goto :goto_0

    .line 272
    :cond_2
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "Get SCREENSHOT_MSG_URI"

    .line 273
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
