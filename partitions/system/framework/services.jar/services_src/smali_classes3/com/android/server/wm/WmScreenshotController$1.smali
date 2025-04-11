.class public Lcom/android/server/wm/WmScreenshotController$1;
.super Ljava/lang/Object;
.source "WmScreenshotController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic val$info:Lcom/android/server/wm/WmScreenshotInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WmScreenshotController;Lcom/android/server/wm/WmScreenshotInfo;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$1;->this$0:Lcom/android/server/wm/WmScreenshotController;

    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotController$1;->val$info:Lcom/android/server/wm/WmScreenshotInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/android/server/wm/WmScreenshotController$1;->this$0:Lcom/android/server/wm/WmScreenshotController;

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$1;->val$info:Lcom/android/server/wm/WmScreenshotInfo;

    invoke-static {p1, p2, p0, v0}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$msendScreenshotMessage(Lcom/android/server/wm/WmScreenshotController;Landroid/os/IBinder;Landroid/content/ServiceConnection;Lcom/android/server/wm/WmScreenshotInfo;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    return-void
.end method
