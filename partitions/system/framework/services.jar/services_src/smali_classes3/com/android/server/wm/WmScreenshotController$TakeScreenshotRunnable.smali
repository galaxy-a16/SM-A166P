.class public Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;
.super Ljava/lang/Object;
.source "WmScreenshotController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final info:Lcom/android/server/wm/WmScreenshotInfo;

.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WmScreenshotController;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    new-instance p1, Lcom/android/server/wm/WmScreenshotInfo;

    invoke-direct {p1}, Lcom/android/server/wm/WmScreenshotInfo;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/WmScreenshotInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotController;Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;-><init>(Lcom/android/server/wm/WmScreenshotController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->this$0:Lcom/android/server/wm/WmScreenshotController;

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/WmScreenshotInfo;

    invoke-static {v0, p0}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$mtakeScreenshot(Lcom/android/server/wm/WmScreenshotController;Lcom/android/server/wm/WmScreenshotInfo;)V

    return-void
.end method
